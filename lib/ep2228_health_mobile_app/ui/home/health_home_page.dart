import 'package:flutter/material.dart';

class HealthHomePage extends StatefulWidget {
  const HealthHomePage({super.key});

  @override
  State<HealthHomePage> createState() => _HealthHomePageState();
}

class _HealthHomePageState extends State<HealthHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
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
              children: [
                Text(
                  "Breakfast",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(child: Icon(Icons.add)),
              ],
            ),
            Divider(color: Colors.white),
            Row(
              children: [
                Text("626", style: TextStyle(color: Colors.white)),
                Text("kcal", style: TextStyle(color: Colors.grey)),
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
                    height: 160,
                    decoration: BoxDecoration(color: Colors.pink[50]!),
                    padding: EdgeInsets.all(24),
                    margin: EdgeInsets.only(bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('fried eggs with tomatoes and bacon'),
                        Row(
                          children: [Text("410"), Text("kcal"), CircleAvatar()],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(color: Colors.pink[50]!),
                    padding: EdgeInsets.all(24),
                    margin: EdgeInsets.only(bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('fried eggs with tomatoes and bacon'),
                        Row(
                          children: [Text("410"), Text("kcal"), CircleAvatar()],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(color: Colors.pink[50]!),
                    padding: EdgeInsets.all(24),
                    margin: EdgeInsets.only(bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('fried eggs with tomatoes and bacon'),
                        Row(
                          children: [Text("410"), Text("kcal"), CircleAvatar()],
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
