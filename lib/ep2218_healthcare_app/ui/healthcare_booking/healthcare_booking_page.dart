import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widgets/healthcare_booking_tabbar_widget.dart';
import 'widgets/healthcare_booking_topbar_widget.dart';

class HealthcareBookingPage extends StatefulWidget {
  const HealthcareBookingPage({super.key});

  @override
  State<HealthcareBookingPage> createState() => _HealthcareBookingPageState();
}

class _HealthcareBookingPageState extends State<HealthcareBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Gap(8),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: HealthcareBookingTopbarWidget(),
            ),
            HealthcareBookingTabbarWidget(),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color.fromRGBO(28, 28, 28, 1),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            CircleAvatar(radius: 24),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 2,
                                children: [
                                  Text(
                                    "Dr. Dream",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Walker",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "General Flutter Development",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(
                                  side: BorderSide(
                                    color: Colors.grey
                                  )
                                ),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '01 Aug',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Time 11:AM",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 24,
                              foregroundColor: Colors.white,
                              backgroundColor: Color.fromRGBO(40, 40, 40, 1),
                              child: Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
