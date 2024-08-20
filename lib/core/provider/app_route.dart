import 'package:demo_bloc/main_screen.dart';
import 'package:demo_bloc/presentation/counter/counter_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic>? appRouteSetting(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const MainScreen(),
        );
      case CounterScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => CounterScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const MainScreen(),
        );
    }
  }
}
