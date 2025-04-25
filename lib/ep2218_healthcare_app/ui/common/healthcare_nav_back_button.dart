import 'package:flutter/material.dart';

class HealthcareNavBackButton extends StatelessWidget {
  final? backgroundColor;
  const HealthcareNavBackButton({super.key,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.white.withValues(alpha: .2),
        foregroundColor: Colors.white,
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
