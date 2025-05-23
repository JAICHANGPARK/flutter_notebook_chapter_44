import 'package:flutter/material.dart';

class HealthcareNavBackButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? foregroundColor;

  const HealthcareNavBackButton({
    super.key,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: CircleAvatar(
        radius: 24,
        backgroundColor: backgroundColor ?? Colors.white.withValues(alpha: .2),
        foregroundColor: foregroundColor ?? Colors.white,
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
