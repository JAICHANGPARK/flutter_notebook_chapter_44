import 'package:flutter/material.dart';

import 'widgets/healthcare_appbar_widget.dart';
import 'widgets/healthcare_search_bar_widget.dart';

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
                  HealthcareAppbarWidget(),
                  HealthcareSearchBarWidget(),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 16,
                        children: [
                          Container(
                            height: 380,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  left: 52,
                                  right: 52,
                                  top: 0,
                                  child: Placeholder(),
                                ),
                                Positioned.fill(
                                  left: 32,
                                  right: 32,
                                  top: 24,
                                  child: Placeholder(),
                                ),
                                Positioned.fill(
                                  left: 16,
                                  right: 16,
                                  top: 48,
                                  child: Placeholder(),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 380,
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Placeholder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 72,
            right: 72,
            child: Container(
              decoration: ShapeDecoration(shape: StadiumBorder()),
              child: Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 28),
                  CircleAvatar(radius: 28),
                  CircleAvatar(radius: 28),
                  CircleAvatar(radius: 28),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
