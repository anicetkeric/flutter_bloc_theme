import 'package:flutter/material.dart';
import 'package:flutter_bloc_theme/core/router/route_exception.dart';
import 'package:flutter_bloc_theme/view/home.dart';
import 'package:flutter_bloc_theme/view/places_screen.dart';



class AppRouter {
  AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {

    switch (settings.name) {
      case MyHomePage.routeName:
        return MaterialPageRoute(
          builder: (_) => const MyHomePage(title: "title"),
        );
      case PlacesScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const PlacesScreen(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }


}


