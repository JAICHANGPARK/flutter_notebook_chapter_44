import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/common/healthcare_alert_button.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/common/healthcare_nav_back_button.dart';
import 'package:gap/gap.dart';

import 'widgets/healthcare_booking_tabbar_widget.d
import 'widgets/healthcare_booking_tabbar_widget.dart';
import 'widgets/healthcare_booking_topbar_widget.dart';art';

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
              child:HealthcareBookingTopbarWidget(),
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
                  return Placeholder();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
