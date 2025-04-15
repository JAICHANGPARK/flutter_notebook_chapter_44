import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            spacing: 16,
            children: [
              Row(
                children: [
                  Text("Cart,", style: TextStyle(fontSize: 32)),
                  Text(
                    ' 3 items',
                    style: TextStyle(fontSize: 32, color: Colors.grey),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ],
              ),
              Gap(4),
              Row(
                spacing: 6,
                children: [
                  Text("Standard delivery, 40-60 minutes"),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(245, 226, 205, 1),
                    ),
                    child: Text(
                      "Free",
                      // style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                spacing: 6,
                children: [
                  Text("Express, 15-25 minutes"),
                  Icon(Icons.bolt, color: Colors.orange),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(245, 226, 205, 1),
                    ),
                    child: Text(
                      "\$2.00",
                      // style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Divider(),
              Expanded(child: ListView(children: [Placeholder()])),
              Container(
                child: Row(
                  children: [
                    Text("Promocode", style: TextStyle(color: Colors.grey)),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
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
        ),
      ),
    );
  }
}
