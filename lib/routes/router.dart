import 'package:cycle_lock/bloc/home/home_cubit.dart';
import 'package:cycle_lock/views/pages/auth_page.dart';
import 'package:cycle_lock/views/pages/home_page.dart';
import 'package:cycle_lock/views/pages/splash_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const SplashPage(),
    ),
    GoRoute(
      path: '/login',
      builder: (_, __) => const AuthPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (_, __) => BlocProvider(
        create: (context) => HomeCubit(),
        child: const HomePage(),
      ),
    ),
  ],
);
