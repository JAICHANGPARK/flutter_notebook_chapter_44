import 'package:flutter/material.dart';

class HealthcareHomePage extends StatefulWidget {
  const HealthcareHomePage({super.key});

  @override
  State<HealthcareHomePage> createState() => _HealthcareHomePageState();
}

class _HealthcareHomePageState extends State<HealthcareHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white.withValues(alpha: .2),
                          foregroundColor: Colors.white,
                          child: Icon(Icons.arrow_back),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white.withValues(alpha: .2),
                          foregroundColor: Colors.white,
                          child: Icon(Icons.calendar_month),
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white.withValues(alpha: .2),
                          foregroundColor: Colors.white,
                          child: Badge(child: Icon(Icons.notifications_none)),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white.withValues(alpha: .2),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 12,
                      children: [
                        Text(
                          "Book a Doctor",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          spacing: 8,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Colors.white.withValues(alpha: .2),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search",
                                    icon: Icon(Icons.search),
                                    iconColor: Colors.white,
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.white.withValues(
                                alpha: .2,
                              ),
                              foregroundColor: Colors.white,
                              child: Icon(Icons.tune),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 52,
                    padding: EdgeInsets.only(left: 16),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(203, 251, 96, 1),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                            child: Text(
                              "Today, 26 Jul",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white.withValues(alpha: .15),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                            child: Text(
                              "Tomorrow, 27 Jul",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white.withValues(alpha: .15),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                            child: Text(
                              "Day after, 28 Jul",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 16,
                        children: [
                          Container(
                            height: 380,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  left: 52,
                                  right: 52,
                                  top: 0,
                                  child: Placeholder(),
                                ),
                                Positioned.fill(
                                  left: 32,
                                  right: 32,
                                  top: 24,
                                  child: Placeholder(),
                                ),
                                Positioned.fill(
                                  left: 16,
                                  right: 16,
                                  top: 48,
                                  child: Placeholder(),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 380,
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Placeholder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 72,
            right: 72,
            child: Container(
              decoration: ShapeDecoration(shape: StadiumBorder(),
              ),
              child: Row(
                spacing: 12,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 26,
                  ),
                  CircleAvatar(radius: 26,),
                  CircleAvatar(radius: 26,),
                  CircleAvatar(radius: 26,),
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}
