import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kantungku/screens/DetailScreen.dart';
import 'package:kantungku/screens/HomeScreen.dart';
import 'package:kantungku/screens/login_screen.dart';
import 'package:kantungku/screens/registerscreen.dart';

void main() {
  runApp(const MainApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),
        GoRoute(path: 'login',
        builder: (BuildContext context,GoRouterState state){
          return const LoginScreen();
        }),
        GoRoute(path: 'register',
        builder: (BuildContext context,GoRouterState state){
          return const Registerscreen();
        }),
      ],
    )
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
