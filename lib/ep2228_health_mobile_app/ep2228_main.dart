import 'package:flutter/material.dart';

import 'ui/health_main_page.dart';

void main() {
  runApp(HealthMobileApp());
}

class HealthMobileApp extends StatelessWidget {
  const HealthMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: HealthMainPage(),
    );
  }
}
