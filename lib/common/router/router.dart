import 'package:dastory/feature/auth/data/datas.dart';
import 'package:dastory/feature/auth/presentation/pages.dart';
import 'package:dastory/feature/home/presentation/pages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/login',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
              StatefulNavigationShell navigationShell) =>
          HomePage(child: navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorKey,
          routes: [
            GoRoute(
              name: 'home',
              path: '/home',
              builder: (context, state) => const StoriesPage(),
            ),
          ],
        )
      ],
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      name: 'register',
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
  ],
  redirect: (context, state) async {
    final isLogin = await AuthLocal().isLogin();
    if (isLogin) {
      return '/home';
    }
    return null;
  },
);
