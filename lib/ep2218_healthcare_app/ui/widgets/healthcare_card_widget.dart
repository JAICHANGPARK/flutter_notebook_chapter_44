import 'package:flutter/material.dart';


class HealthcareCardWidget extends StatelessWidget {
  const HealthcareCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return     Container(
      height: 400,
      child: Stack(
        children: [
          Positioned.fill(
            left: 62,
            right: 62,
            top: 8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color.fromRGBO(45, 42, 43, 1),
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(
                          66,
                          63,
                          64,
                          1,
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(
                          66,
                          63,
                          64,
                          1,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(
                          66,
                          63,
                          64,
                          1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            left: 42,
            right: 42,
            top: 32,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color.fromRGBO(28, 28, 28, 1),
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(
                          66,
                          63,
                          64,
                          1,
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(
                          66,
                          63,
                          64,
                          1,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(
                          66,
                          63,
                          64,
                          1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            left: 16,
            right: 16,
            top: 64,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Color.fromRGBO(203, 251, 96, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
