import 'package:flutter/material.dart';

class TaskActivityWidget extends StatelessWidget {
  const TaskActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      // padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Finance Mobile App", style: TextStyle(fontSize: 24)),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                  maxLines: 3,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                Row(
                  spacing: 8,
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.grey[100]!,
                      ),
                      child: Text("In Progress"),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                    ),

                    Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.grey[100]!,
                      ),
                      child: Text("Medium"),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 52,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    spacing: 12,
                    children: [
                      Container(
                        width: 120,
                        child: Stack(
                          children:
                              List.generate(3, (idx) {
                                return Positioned(
                                  left: idx * 34,
                                  child: CircleAvatar(radius: 26),
                                );
                              }).toList(),
                        ),
                      ),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "3 People ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "in this project",
                                style: TextStyle(color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            // height: 52,
            margin: EdgeInsets.all(2),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(color: Colors.grey[50]!),
            child: Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Progress"), Text("72%")],
                ),
                LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  percent: .72,
                  backgroundColor: Colors.white,
                  progressColor: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
