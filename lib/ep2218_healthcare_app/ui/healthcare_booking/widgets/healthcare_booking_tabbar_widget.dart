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
              child: Text("Today, 26 Jul", style: TextStyle(fontSize: 16)),
            ),
            Container(
              margin: EdgeInsets.only(right: 8),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white.withValues(alpha: .15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                "Tomorrow, 27 Jul",
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
                "Day after, 28 Jul",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
