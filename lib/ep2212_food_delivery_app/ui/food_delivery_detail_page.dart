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
            decoration: BoxDecoration(color: Colors.deepOrangeAccent[100]),
            child: Row(
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
