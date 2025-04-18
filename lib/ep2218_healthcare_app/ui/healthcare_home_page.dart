import 'package:flutter/material.dart';

class HealthcareHomePage extends StatefulWidget {
  const HealthcareHomePage({super.key});

  @override
  State<HealthcareHomePage> createState() => _HealthcareHomePageState();
}

class _HealthcareHomePageState extends State<HealthcareHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white.withValues(alpha: .2),
                          foregroundColor: Colors.white,
                          child: Icon(Icons.arrow_back),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white.withValues(alpha: .2),
                          foregroundColor: Colors.white,
                          child: Icon(Icons.calendar_month),
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white.withValues(alpha: .2),
                          foregroundColor: Colors.white,
                          child: Badge(child: Icon(Icons.notifications_none)),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white.withValues(alpha: .2),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Book a Doctor",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
