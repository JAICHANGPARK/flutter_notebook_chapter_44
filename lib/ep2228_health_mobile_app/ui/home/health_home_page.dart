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
                CircleAvatar(
                  child: Icon(Icons.add),
                  backgroundColor: Colors.white.withValues(alpha: .1),
                  foregroundColor: Colors.white,
                ),
              ],
            ),
            Divider(color: Colors.white),
            Row(
              textBaseline: TextBaseline.ideographic,
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  "626",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 72,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "kcal",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Color.fromRGBO(0, 142, 35, 1),
                  ),
                  child: Text(
                    "Normal",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(254, 165, 168, 1),
                    ),
                    padding: EdgeInsets.all(24),
                    margin: EdgeInsets.only(bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'fried eggs with tomatoes\nand bacon',
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              "410",
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("kcal"),
                            Spacer(),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: CircleAvatar()),
                          ],
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
