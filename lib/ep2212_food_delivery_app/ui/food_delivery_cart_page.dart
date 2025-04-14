import 'package:flutter/material.dart';

class FoodDeliveryCartPage extends StatefulWidget {
  const FoodDeliveryCartPage({super.key});

  @override
  State<FoodDeliveryCartPage> createState() => _FoodDeliveryCartPageState();
}

class _FoodDeliveryCartPageState extends State<FoodDeliveryCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text("Cart,"),
                Text('3 items'),
                IconButton(onPressed: () {
                  Navigator.of(context).pop();
                }, icon: Icon(Icons.clear)),
              ],
            ),
            Row(
              children: [
                Text("Standard delivery, 40-60 minutes"),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Color.fromRGBO(245, 226, 205, 1),
                  ),
                  child: Text(
                    "Free",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
