import 'package:flutter/material.dart';
import 'package:resmi_tatiller/views/holiday/holiday_body.dart';
import 'package:resmi_tatiller/views/home/home_body.dart';

class AppRouter {
  Route? routeChanger(settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeView());
      case '/holiday':
        return MaterialPageRoute(builder: (_) => const HolidayView());
      default:
        return null;
    }
  }
}
