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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 150,
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
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 12,
                      children: [
                        Text(
                          "Shop in XPay app",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          height: 200,
                          child: Column(
                            spacing: 16,
                            children: [
                              Expanded(
                                child: Row(
                                  children: List.generate(
                                    5,
                                    (idx) => Expanded(
                                      child: Column(
                                        spacing: 8,
                                        children: [
                                          Expanded(
                                            child: Stack(
                                              children: [
                                                CircleAvatar(
                                                  radius: 32,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text("Title"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: List.generate(
                                    5,
                                        (idx) => Expanded(
                                      child: Column(
                                        spacing: 8,
                                        children: [
                                          Expanded(
                                            child: Stack(
                                              children: [
                                                CircleAvatar(
                                                  radius: 32,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text("Title"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Text(
                          'Featured Brands',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        TextButton(onPressed: () {}, child: Text("See all")),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                  ),
                  Container(
                    height: 240,
                    padding: EdgeInsets.only(left: 16, top: 12),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          width: 180,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        );
                      },

                      scrollDirection: Axis.horizontal,
                    ),
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
