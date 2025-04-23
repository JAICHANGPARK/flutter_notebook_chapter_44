import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2218_healthcare_app/ui/healthcare_welcome/healthcare_welcome_list_page.dart';
import 'package:hugeicons/hugeicons.dart';

import 'healthcare_calendar/healthcare_calendar_page.dart';

class HealthcareHomePage extends StatefulWidget {
  const HealthcareHomePage({super.key});

  @override
  State<HealthcareHomePage> createState() => _HealthcareHomePageState();
}

class _HealthcareHomePageState extends State<HealthcareHomePage> {
  int pageNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: IndexedStack(
                children: [
                  Container(),
                  HealthcareCalendarPage(),
                  Container(),
                  HealthcareWelcomeListPage(),
                ],
              )
            ),
          ),
          Positioned(
            bottom: 24,
            left: 72,
            right: 72,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 6),
                child: Container(
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.white.withValues(alpha: .2),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Icon(HugeIcons.strokeRoundedHome02),
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Icon(HugeIcons.strokeRoundedCalendar01),
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Icon(HugeIcons.strokeRoundedUserGroup),
                      ),
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Icon(HugeIcons.strokeRoundedUserList),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
