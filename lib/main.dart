import 'package:automated_tcc_greenhouse_mobile/features/configs/page/configuration_page.dart';
import 'package:automated_tcc_greenhouse_mobile/features/controller/page/controller_page.dart';
import 'package:flutter/material.dart';

import 'features/chart/chart_page.dart';
import 'features/dashboard/page/dashboard_page.dart';
import 'features/menu/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/controller': (context) => const ControllerPage(),
        '/chart': (context) => const ChartPage(),
        '/configuration': (context) => const ConfigurationPage(),
      },
    );
  }
}