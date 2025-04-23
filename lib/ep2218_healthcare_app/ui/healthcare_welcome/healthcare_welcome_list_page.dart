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
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(),
              color: Color.fromRGBO(203, 251, 96, 1),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    HealthcareNavBackButton(),
                    Expanded(child: Center(child: Text("Welcome List"))),
                    HealthcareAlertButton(),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Doctor List"),
                    CircleAvatar(child: Icon(Icons.arrow_forward)),
                  ],
                ),
                Expanded(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
