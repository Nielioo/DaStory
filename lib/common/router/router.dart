import 'package:dastory/feature/auth/data/datas.dart';
import 'package:dastory/feature/auth/presentation/pages.dart';
import 'package:dastory/feature/home/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(),
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
      return '/';
    }
    return '/login';
  },
);