import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kantungku/screens/detail_screen.dart';
import 'package:kantungku/screens/home_screen.dart';
import 'package:kantungku/screens/login_screen.dart';
import 'package:kantungku/screens/register_screen.dart';
import 'package:kantungku/shared/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
      routes: <RouteBase>[
        GoRoute(
            path: 'register',
            name: 'register',
            builder: (BuildContext context, GoRouterState state) {
              return const Registerscreen();
            }),
      ],
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    )
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: const AppTheme().themeData,
      routerConfig: _router,
    );
  }
}
