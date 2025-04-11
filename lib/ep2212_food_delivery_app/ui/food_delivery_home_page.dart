import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({super.key});

  @override
  State<FoodDeliveryHomePage> createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: []),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(HugeIcons.strokeRoundedHome02),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(HugeIcons.strokeRoundedSearch01),
            label: "Catalog",
          ),
          BottomNavigationBarItem(
            icon: Icon(HugeIcons.strokeRoundedShoppingCart01),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(HugeIcons.strokeRoundedUser),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
