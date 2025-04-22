import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/common/healthcare_alert_button.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/common/healthcare_nav_back_button.dart';


class HealthcareBookingTopbarWidget extends StatelessWidget {
  const HealthcareBookingTopbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
