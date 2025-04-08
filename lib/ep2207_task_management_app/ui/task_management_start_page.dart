import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2207_task_management_app/ui/widgets/task_activity_widget.dart';
import 'package:gap/gap.dart';

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
            top: 64,
            left: 64,
            child: Transform(
              transform: Matrix4.identity()
                ..rotateX(0.2)
                ..rotateY(-.1)
                ..rotateZ(-.1),
              child: Container(
                height: 240,
                width: 240,
                color: Colors.blue,
                child: Stack(
                  children: [
                    Center(child: VerticalDivider()),
                    Center(child: Divider()),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 320,
            left: 24,
            right: 0,
            bottom: 0,
            child: Transform(
              transform: Matrix4.identity()
            ..rotateX(0.2)
            ..rotateY(-.2)
            ..rotateZ(-.1),
              child: TaskActivityWidget(),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Text(
                    "Stay Organized, Stay\nProductive",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Gap(6),
                  Text(
                    "Manage your tasks effortiessly and boost your\nefficiency with smart planning.",
                    textAlign: TextAlign.center,
                  ),
                  Gap(32),
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Gap(24),
                  Text(
                    "Already have an account? Login",
                    textAlign: TextAlign.center,
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
