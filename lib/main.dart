import 'package:guru/pages/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:guru/theme.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:guru/pages/dashboard/dashboard_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        DashboardPage.routeName: (context) => DashboardPage(),
      },
    );
  }
}
