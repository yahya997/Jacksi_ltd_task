import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {Object? args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }
  Future<dynamic> navigateToNavigator(String routeName, {Object? args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  Future<dynamic> navigateToAndRemove(String routeName) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
          (_) => false,
    );
  }
}