import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import 'widgets/healthcare_appbar_widget.dart';
import 'widgets/healthcare_card_widget.dart';
import 'widgets/healthcare_search_bar_widget.dart';
import 'widgets/healthcare_tabbar_widget.dart';

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
                  HealthcareAppbarWidget(),
                  HealthcareSearchBarWidget(),
                  HealthcareTabbarWidget(),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 16,
                        children: [
                          HealthcareCardWidget(),
                          Container(
                            margin: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Color.fromRGBO(28, 28, 28, 1),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              spacing: 12,
                              children: [
                                Row(
                                  spacing: 12,
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Color.fromRGBO(
                                          51, 51, 51, 1),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Available Today",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Color.fromRGBO(
                                          51, 51, 51, 1),
                                      foregroundColor: Colors.grey,
                                      child: Icon(Icons.favorite_border),
                                    ),
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Color.fromRGBO(
                                          51, 51, 51, 1),
                                      foregroundColor: Colors.grey,
                                      child: Icon(Icons.chat_outlined),
                                    ),
                                  ],
                                ),
                                Text("Dr, Dream Walker",
                                    style: TextStyle(fontSize: 32,
                                        color: Colors.white)),
                                GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 12,
                                    crossAxisSpacing: 12,
                                    childAspectRatio: 3.5,
                                  ),
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: ShapeDecoration(
                                        shape: StadiumBorder(),
                                        color: Color.fromRGBO(51, 51, 51, 1),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Today, 26 Jul", style: TextStyle(
                                            color: Colors.white
                                        ),),
                                      ),
                                    );
                                  },
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Colors.black,
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 12,),
                                  child: Center(
                                    child: Text(
                                      "View All Appointment",
                                      style: TextStyle(fontSize: 16,
                                        color: Color.fromRGBO(
                                            203, 251, 96, 1),),
                                    ),
                                  ),
                                ),
                              ],
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
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 6),
                child: Container(
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.white.withValues(alpha: .2),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Icon(HugeIcons.strokeRoundedHome02),
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Icon(HugeIcons.strokeRoundedCalendar01),
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Icon(HugeIcons.strokeRoundedUserGroup),
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Icon(HugeIcons.strokeRoundedUserList),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
