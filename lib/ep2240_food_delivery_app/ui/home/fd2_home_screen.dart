import 'package:flutter/material.dart';

class Fd2HomeScreen extends StatefulWidget {
  const Fd2HomeScreen({super.key});

  @override
  State<Fd2HomeScreen> createState() => _Fd2HomeScreenState();
}

class _Fd2HomeScreenState extends State<Fd2HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.green),
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 24),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("Delivery location"),
                                Icon(
                                  Icons.arrow_drop_down,
                                  size: 12,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Text("Seoul, South Korea",style: TextStyle(
                              color: Colors.white,
                            ),),
                          ],
                        ),
                      ),
                      CircleAvatar(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Placeholder()),
          Container(
            height: 82,
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.all(12),
            child: Row(children: []),
          ),
        ],
      ),
    );
  }
}
