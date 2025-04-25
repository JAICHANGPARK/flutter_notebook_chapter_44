import 'package:flutter/material.dart';


class HealthcareDoctorListWidget extends StatelessWidget {
  const HealthcareDoctorListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(bottom: 24),
          decoration: BoxDecoration(
            color: Color.fromRGBO(28, 28, 28, 1),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            spacing: 20,
            children: [
              Container(
                height: 132,
                width: 96,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(181, 226, 85, 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Dream Walker",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Gap(3),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 14,
                          color: Color.fromRGBO(
                            181,
                            226,
                            85,
                            1,
                          ),
                        ),
                        Gap(6),
                        Text(
                          "South Korea",
                          style: TextStyle(color: Colors.white),
                        ),
                        Gap(6),
                        Icon(
                          Icons.verified_outlined,
                          size: 14,
                          color: Color.fromRGBO(
                            181,
                            226,
                            85,
                            1,
                          ),
                        ),
                        Gap(6),
                        Text(
                          "Rating",
                          style: TextStyle(
                            color: Colors.white.withValues(
                              alpha: .3,
                            ),
                          ),
                        ),
                        Gap(4),
                        Text(
                          "4.9",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Gap(24),
                    Text(
                      "Meet Dr. Dreamwalker Flutter Skilled over 10.",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
