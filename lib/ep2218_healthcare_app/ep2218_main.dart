import 'package:flutter/material.dart';

import 'ui/healthcare_home_page.dart';

void main() {
  runApp(HealthcareApp());
}

class HealthcareApp extends StatelessWidget {
  const HealthcareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HealthcareHomePage(),
    );
  }
}
