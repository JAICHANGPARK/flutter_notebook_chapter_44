import 'package:flutter/material.dart';

class Fd2CartPage extends StatefulWidget {
  const Fd2CartPage({super.key});

  @override
  State<Fd2CartPage> createState() => _Fd2CartPageState();
}

class _Fd2CartPageState extends State<Fd2CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.keyboard_arrow_left),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Menu Details",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.my_location),
                            ),
                          ],
                        ),
                        Container(
                          height: 380,
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2023/02/01/01/07/cheeseburger-7759288_1280.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container(child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(child: Column(children: [
                              
                            ],))
                          ],
                        )

                      ],
                    ),
                  ))),
                ],
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: .05),
                    spreadRadius: 10,
                    blurRadius: 5,
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "US \$2.99",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(42, 109, 62, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      spacing: 8,
                      children: [
                        Icon(Icons.shopping_basket_sharp, color: Colors.white),
                        Text(
                          "Add to Chart",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
