import 'package:dastory/feature/auth/data/datas.dart';
import 'package:dastory/feature/auth/presentation/pages.dart';
import 'package:dastory/feature/home/presentation/pages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _uploadNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _settingNavigatorKey =
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
          navigatorKey: _homeNavigatorKey,
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
        ),
        StatefulShellBranch(
          navigatorKey: _uploadNavigatorKey,
          routes: [
            GoRoute(
              name: 'upload',
              path: '/upload',
              builder: (context, state) => const PostStoryPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _settingNavigatorKey,
          routes: [
            GoRoute(
              name: 'profile',
              path: '/profile',
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
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
      return '/login';
    }
    return null;
  },
);
