import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2212_food_delivery_app/ui/food_delivery_home_page.dart';

void main() {
    runApp(FoodDeliveryApp());
}


class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodDeliveryHomePage(),
    );
  }
}
