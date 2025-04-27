import 'package:flutter/material.dart';

class HealthHomePage extends StatefulWidget {
  const HealthHomePage({super.key});

  @override
  State<HealthHomePage> createState() => _HealthHomePageState();
}

class _HealthHomePageState extends State<HealthHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios_new),
          title: Text("Today, Mar 12"),
          centerTitle: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Breakfast"), CircleAvatar(child: Icon(Icons.add))],
        ),
        Row(
          children: [
            Text("626"),
            Text("kcal"),
            Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.green,
              ),
              child: Text("Normal", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.pink[50]!),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('fried eggs with tomatoes and bacon'),
                    Row(children: [Text("410"), Text("kcal"), CircleAvatar()]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
