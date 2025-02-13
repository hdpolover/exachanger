import 'package:exachanger/features/dashboard/presentation/news_detail.dart';
import 'package:exachanger/features/exchange/presentation/exchange.dart';
import 'package:exachanger/features/home/home_screen.dart';
import 'package:exachanger/features/sign_in/sign_in_screen.dart';
import 'package:exachanger/features/sign_up/sign_up_screen.dart';
import 'package:exachanger/features/splash/splash_screen.dart';
import 'package:exachanger/features/welcome/presentation/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

enum Routes {
  splash,
  welcome,
  signIn,
  signUp,
  home,
  exchange,
  newsDetail,
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: '/',
        name: Routes.splash.name,
        builder: (context, state) => SplashScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/welcome',
        name: Routes.welcome.name,
        builder: (context, state) => WelcomeScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/home',
        name: Routes.home.name,
        builder: (context, state) => HomeScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/sign-in',
        name: Routes.signIn.name,
        builder: (context, state) => SignInScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/sign-up',
        name: Routes.signUp.name,
        builder: (context, state) => SignUpScreen(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/exchange',
        name: Routes.exchange.name,
        builder: (context, state) => Exchange(
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: '/news-detail',
        name: Routes.newsDetail.name,
        builder: (context, state) => NewsDetaill(
          key: state.pageKey,
        ),
      ),
    ],
  );
}
