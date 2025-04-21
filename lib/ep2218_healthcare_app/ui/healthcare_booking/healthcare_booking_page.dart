import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/common/healthcare_alert_button.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/common/healthcare_nav_back_button.dart';
import 'package:gap/gap.dart';

class HealthcareBookingPage extends StatefulWidget {
  const HealthcareBookingPage({super.key});

  @override
  State<HealthcareBookingPage> createState() => _HealthcareBookingPageState();
}

class _HealthcareBookingPageState extends State<HealthcareBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  HealthcareNavBackButton(),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Doctor Booking",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  HealthcareAlertButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
