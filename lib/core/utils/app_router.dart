import 'package:bisku/features/auth/presentaion/views/login_view.dart';
import 'package:bisku/features/auth/presentaion/views/register_view.dart';
import 'package:bisku/features/home/persentaion/views/home_view.dart';
import 'package:bisku/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static String kHomeView = '/HomeView';
  static String kRegisterView = '/RegisterView';
  static String kLoginView = '/LoginView';
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: kRegisterView,
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterView();
      },
    ),
    GoRoute(
      path: kLoginView,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginView();
      },
    ),
    GoRoute(
      path: kHomeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
  ]);
}
