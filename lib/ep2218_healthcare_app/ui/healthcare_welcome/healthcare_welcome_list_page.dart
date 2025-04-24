import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/common/healthcare_alert_button.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/common/healthcare_nav_back_button.dart';

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
              borderRadius: BorderRadius.only(),
              color: Color.fromRGBO(203, 251, 96, 1),
            ),
            padding: EdgeInsets.only(left: 16, right: 16, top: 72, bottom: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    HealthcareNavBackButton(),
                    Expanded(child: Center(child: Text("Welcome List",
                    style: TextStyle(
                      fontSize: 18,
                    ),))),
                    HealthcareAlertButton(),
                  ],
                ),
                Text("Please Select Your Region"),
                SizedBox(height: 52, child: Placeholder()),
                Text("Please Select Visit Type"),
                SizedBox(height: 52, child: Placeholder()),
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
                        style: TextStyle(color: Colors.white),
                      ),
                      CircleAvatar(
                          radius: 14,
                          child: Icon(Icons.arrow_forward,
                          size: 14,)),
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
                          decoration: BoxDecoration(),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 82,
                                child: Placeholder(),
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
