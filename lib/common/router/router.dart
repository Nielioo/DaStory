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
  initialLocation: '/stories',
  routes: [
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: _rootNavigatorKey,
      builder: (BuildContext context, GoRouterState state,
              StatefulNavigationShell navigationShell) =>
          HomePage(child: navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorKey,
          routes: [
            GoRoute(
              name: 'home',
              path: '/stories',
              builder: (context, state) => const StoriesPage(),
              routes: [
                GoRoute(
                  path: ':userId',
                  builder: (context, state) => StoryDetailPage(
                      storyId: state.pathParameters['userId'] ?? ''),
                ),
              ],
            ),
          ],
        )
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      name: 'login',
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      name: 'register',
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
  ],
  redirect: (context, state) async {
    final isLogin = await AuthLocal().isLogin();
    if (!isLogin) {
      return '/';
    }
    return null;
  },
);
