import 'package:flutter/material.dart';

class TaskManagementDetailPage extends StatefulWidget {
  const TaskManagementDetailPage({super.key});

  @override
  State<TaskManagementDetailPage> createState() =>
      _TaskManagementDetailPageState();
}

class _TaskManagementDetailPageState extends State<TaskManagementDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 24,
                      foregroundColor: Colors.black,

                      child: Icon(Icons.arrow_back_ios_new),
                    ),
                    Expanded(child: Center(child: Text("Details"))),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,

                      child: Icon(Icons.more_horiz),
                    ),
                  ],
                ),
              ),
              Column(
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
                                    child: CircleAvatar(radius: 22),
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
