import 'package:flutter/material.dart';
import 'package:xth_assesment/constants/route_constants.dart';
import 'package:xth_assesment/view/bottom_nav.dart';
import 'package:xth_assesment/view/home/home.dart';

Route generateRoute(RouteSettings settings) {
  materialRoute(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
  switch (settings.name) {
    case RouteConstants.homeScreem:
      return materialRoute(const HomeScreen());
    case RouteConstants.bottomNav:
      return materialRoute(const BottomNavigationbar());

    default:
      return materialRoute(const BottomNavigationbar());
  }
}
