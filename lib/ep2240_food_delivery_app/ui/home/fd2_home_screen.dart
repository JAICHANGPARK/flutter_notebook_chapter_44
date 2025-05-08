import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(radius: 26),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Delivery location",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  size: 12,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Text(
                              "Seoul, South Korea",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.green,
                        child: Badge(
                          backgroundColor: Colors.green,
                          child: Icon(HugeIcons.strokeRoundedNotification01),
                        ),
                      ),
                    ],
                  ),
                  Gap(24),
                  Text(
                    "What you'd like",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("to eat for today?"),
                  Gap(12),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: ,
                    ),
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
