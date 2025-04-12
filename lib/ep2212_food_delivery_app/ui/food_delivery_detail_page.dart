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
          Expanded(child: SingleChildScrollView(child: Column(children: []))),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(color: Colors.deepOrangeAccent[100]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("\$5.90"),
                VerticalDivider(),
                Text("Add to cart"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
