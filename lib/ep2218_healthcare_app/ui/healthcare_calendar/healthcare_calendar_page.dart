import 'package:flutter/material.dart';

import 'widgets/healthcare_appbar_widget.dart';
import 'widgets/healthcare_search_bar_widget.dart';
import 'widgets/healthcare_tabbar_widget.dart';

class HealthcareCalendarPage extends StatefulWidget {
  const HealthcareCalendarPage({super.key});

  @override
  State<HealthcareCalendarPage> createState() => _HealthcareCalendarPageState();
}

class _HealthcareCalendarPageState extends State<HealthcareCalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                            backgroundColor: Color.fromRGBO(51, 51, 51, 1),
                          ),
                          Expanded(
                            child: Text(
                              "Available Today",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Color.fromRGBO(51, 51, 51, 1),
                            foregroundColor: Colors.grey,
                            child: Icon(Icons.favorite_border),
                          ),
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Color.fromRGBO(51, 51, 51, 1),
                            foregroundColor: Colors.grey,
                            child: Icon(Icons.chat_outlined),
                          ),
                        ],
                      ),
                      Text(
                        "Dr, Dream Walker",
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
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
                                "Today, 26 Jul",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        },
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Center(
                          child: Text(
                            "View All Appointment",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(203, 251, 96, 1),
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
        ),
      ],
    );
  }
}
