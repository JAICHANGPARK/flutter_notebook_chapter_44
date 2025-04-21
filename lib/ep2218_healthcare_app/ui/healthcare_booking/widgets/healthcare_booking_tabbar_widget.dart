import 'package:flutter/material.dart';

class HealthcareBookingTabbarWidget extends StatelessWidget {
  const HealthcareBookingTabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: EdgeInsets.only(left: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 8),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Color.fromRGBO(203, 251, 96, 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text("Cardiologist", style: TextStyle(fontSize: 16)),
            ),
            Container(
              margin: EdgeInsets.only(right: 8),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white.withValues(alpha: .15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                "Kidney",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 8),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white.withValues(alpha: .15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                "Neurologist",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 8),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white.withValues(alpha: .15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                "Neurologist",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
