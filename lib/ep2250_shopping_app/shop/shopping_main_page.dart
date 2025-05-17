import 'package:flutter/material.dart';

class ShoppingMainPage extends StatefulWidget {
  const ShoppingMainPage({super.key});

  @override
  State<ShoppingMainPage> createState() => _ShoppingMainPageState();
}

class _ShoppingMainPageState extends State<ShoppingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 72, left: 24, right: 24, bottom: 24),
            decoration: BoxDecoration(color: Color.fromRGBO(244, 246, 248, 1)),
            child: Row(
              spacing: 12,
              children: [
                Expanded(
                  child: Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search for brands or products",
                      ),
                    ),
                  ),
                ),
                CircleAvatar(radius: 24, backgroundColor: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
