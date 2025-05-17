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
      backgroundColor: Colors.white,
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
                    padding: EdgeInsets.symmetric(horizontal: 12),
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
          Container(
            height: 160,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Row(
              spacing: 12,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 246, 248, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 246, 248, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Text(
                "Shop in XPay app",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                height: 200,
                child: Column(
                  children: [
                    Expanded(child: Row(
                      children: List.generate(5, (idx)=> Expanded(
                        child: Column(children: [
                          Expanded(child: Placeholder()),
                          Text("Title")
                        ],),
                      ))
                    )),
                    Expanded(child: Row(
                        children: List.generate(5, (idx)=> Expanded(
                          child: Column(children: [
                            Expanded(child: Placeholder()),
                            Text("Title")
                          ],),
                        ))
                    )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
