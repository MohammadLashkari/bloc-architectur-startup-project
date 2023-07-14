import 'package:flutter/material.dart';

import '../../core/exceptions/route_exception.dart';
import '../screens/home_screen/home_screen.dart';

class AppRouter {
  static late Widget screen;
  static const String home = 'home';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        screen = const HomeScreen();
        break;

      default:
        throw RouteException('Invalid route: ${settings.name}');
    }

    return MaterialPageRoute<String>(
      builder: (_) => screen,
    );
  }
}
