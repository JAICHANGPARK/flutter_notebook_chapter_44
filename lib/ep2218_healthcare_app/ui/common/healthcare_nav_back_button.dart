import 'package:flutter/material.dart';

class HealthcareNavBackButton extends StatelessWidget {
  const HealthcareNavBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.white.withValues(alpha: .2),
      foregroundColor: Colors.white,
      child: Icon(Icons.arrow_back),
    );
  }
}
