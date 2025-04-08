import 'package:flutter/material.dart';

class TaskManagementStartPage extends StatefulWidget {
  const TaskManagementStartPage({super.key});

  @override
  State<TaskManagementStartPage> createState() =>
      _TaskManagementStartPageState();
}

class _TaskManagementStartPageState extends State<TaskManagementStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Text(
                    "Stay Organized, Stay Productive",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Manage your tasks effortiessly and boost your efficiency with smart planning.",
                  ),
                  Container(
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white),
                      ),
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
