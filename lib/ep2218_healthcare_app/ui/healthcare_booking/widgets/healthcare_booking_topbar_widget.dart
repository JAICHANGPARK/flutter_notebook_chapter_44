import 'package:flutter/material.dart';


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
