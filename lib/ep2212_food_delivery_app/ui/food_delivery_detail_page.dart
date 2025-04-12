import 'package:flutter/material.dart';

class FoodDeliveryDetailPage extends StatefulWidget {
  const FoodDeliveryDetailPage({super.key});

  @override
  State<FoodDeliveryDetailPage> createState() => _FoodDeliveryDetailPageState();
}

class _FoodDeliveryDetailPageState extends State<FoodDeliveryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 400, decoration: BoxDecoration(color: Colors.blue)),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: "Choco croissant,"),
                        TextSpan(text: "110g"),
                      ],
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    maxLines: 3,
                  ),
                  Text("Add to order", style: TextStyle(fontSize: 19)),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: Color.fromRGBO(243, 152, 80, 1),
              borderRadius: BorderRadius.circular(6),
            ),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$5.90",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  VerticalDivider(width: 32),
                  Text(
                    "Add to cart",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
