import 'package:flutter/material.dart';

class HealthcareAlertButton extends StatelessWidget {
  const HealthcareAlertButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.white.withValues(alpha: .2),
      foregroundColor: Colors.white,
      child: Badge(child: Icon(Icons.notifications_none)),
    );
  }
}
