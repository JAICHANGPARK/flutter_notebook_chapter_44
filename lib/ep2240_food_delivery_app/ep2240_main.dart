import 'package:flutter/material.dart';

import 'ui/home/fd2_home_screen.dart';

void main() {
  runApp(FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.grey[50]),
      home: Fd2HomeScreen(),
    );
  }
}
