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
                children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        spacing: 8,
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.white.withValues(alpha: .2),
                          ),
                          Spacer(),
                          CircleAvatar( radius: 24,),
                          CircleAvatar( radius: 24,),
                          CircleAvatar( radius: 28,),
                        ],
                      ),
                    )
              
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
