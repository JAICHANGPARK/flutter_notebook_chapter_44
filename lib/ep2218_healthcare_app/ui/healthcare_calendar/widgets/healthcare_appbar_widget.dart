import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/common/healthcare_alert_button.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/common/healthcare_nav_back_button.dart';

class HealthcareAppbarWidget extends StatelessWidget {
  const HealthcareAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        spacing: 8,
        children: [
          HealthcareNavBackButton(),
          Spacer(),
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white.withValues(alpha: .2),
            foregroundColor: Colors.white,
            child: Icon(Icons.calendar_month),
          ),
          HealthcareAlertButton(),
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white.withValues(alpha: .2),
          ),
        ],
      ),
    );
  }
}
