import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/common/healthcare_alert_button.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/common/healthcare_nav_back_button.dart';
import 'package:gap/gap.dart';

class HealthcareWelcomeListPage extends StatefulWidget {
  const HealthcareWelcomeListPage({super.key});

  @override
  State<HealthcareWelcomeListPage> createState() =>
      _HealthcareWelcomeListPageState();
}

class _HealthcareWelcomeListPageState extends State<HealthcareWelcomeListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
              color: Color.fromRGBO(203, 251, 96, 1),
            ),
            padding: EdgeInsets.only(left: 16, right: 16, top: 72, bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Row(
                  children: [
                    HealthcareNavBackButton(),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Welcome List",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    HealthcareAlertButton(),
                  ],
                ),
                Gap(4),
                Text(
                  "Please Select Your Region",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 52,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 12,
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Color.fromRGBO(181, 226, 85, 1),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 12,
                          ),
                          child: Row(
                            spacing: 8,
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white.withValues(
                                  alpha: .3,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                  ),
                                ),
                              ),
                              Text("Abu Dhabi"),
                            ],
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Color.fromRGBO(181, 226, 85, 1),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 12,
                          ),
                          child: Row(
                            spacing: 8,
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white.withValues(
                                  alpha: .3,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                  ),
                                ),
                              ),
                              Text("Dubai"),
                            ],
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Color.fromRGBO(181, 226, 85, 1),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 12,
                          ),
                          child: Row(
                            spacing: 8,
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white.withValues(
                                  alpha: .3,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                  ),
                                ),
                              ),
                              Text("Seoul"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(6),
                Text(
                  "Please Select Visit Type",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 52,
                  child: Row(
                    spacing: 12,
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Color.fromRGBO(181, 226, 85, 1),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Row(
                          spacing: 8,
                          children: [
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: Colors.white.withValues(
                                alpha: .3,
                              ),
                              child: Icon(Icons.home_filled, size: 16),
                            ),
                            Text("Teleconsultation"),
                          ],
                        ),
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Color.fromRGBO(181, 226, 85, 1),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Row(
                          spacing: 8,
                          children: [
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: Colors.white.withValues(
                                alpha: .3,
                              ),
                              child: Icon(Icons.home_filled, size: 16),
                            ),
                            Text("Home Visit"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Doctor List",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.white.withValues(alpha: .2),
                        foregroundColor: Colors.white,
                        child: Icon(Icons.arrow_forward, size: 14),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      top: 16.0,
                    ),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.only(bottom: 24),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(28, 28, 28, 1),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 132,
                                width: 96,
                                child: Container(decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(16),
                                ),),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dr. Dream Walker"),
                                    Row(children: []),
                                    Text(
                                      "Meet Dr. Dreamwalker Flutter Skilled over 10.",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
