import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2212_food_delivery_app/model/food_cart_model.dart';
import 'package:gap/gap.dart';

class FoodDeliveryCartPage extends StatefulWidget {
  const FoodDeliveryCartPage({super.key});

  @override
  State<FoodDeliveryCartPage> createState() => _FoodDeliveryCartPageState();
}

class _FoodDeliveryCartPageState extends State<FoodDeliveryCartPage> {
  List<FoodCart> cartItems  = [
    FoodCart("Gnocchi with mushroom gravy,", "230", 5.6, 1),
    FoodCart("Wenzel with raspberries and currants", "170", 3.8, 1),
    FoodCart("Gnocchi with mushroom gravy,", "230", 5.6, 1),
    FoodCart("Gnocchi with mushroom gravy,", "230", 5.6, 1),

  ];
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
                    padding: EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
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
              Expanded(child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.blue
                              ),
                            )
                        ],
                      ),
                    );
                  },)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[400]!),
                  borderRadius: BorderRadius.circular(4),
                ),

                child: Row(
                  children: [
                    Text("Promocode", style: TextStyle(color: Colors.grey)),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.end,
                        style: TextStyle(fontWeight: FontWeight.bold),

                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.check),
                          suffixIconColor: Colors.orange,
                        ),
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
