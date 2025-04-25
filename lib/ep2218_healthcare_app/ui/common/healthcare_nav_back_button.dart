import 'package:flutter/material.dart';

class HealthcareNavBackButton extends StatelessWidget {
  Color? backgroundColor;
  Color? forgroundColor;

  HealthcareNavBackButton({super.key, this.backgroundColor,
  this.forgroundColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: CircleAvatar(
        radius: 24,
        backgroundColor: backgroundColor ?? Colors.white.withValues(alpha: .2),
        foregroundColor: Colors.white,
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
