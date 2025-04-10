import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2207_task_management_app/ui/task_management_main_page.dart';
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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            top: 160,
            left: 120,
            right: -72,
            child: Transform(
              transform:
                  Matrix4.identity()
                    ..rotateX(0.2)
                    ..rotateY(.6)
                    ..rotateZ(.005),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .05),
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: TaskActivityWidget(),
              ),
            ),
          ),
          Positioned.fill(
            top: 240,
            left: 72,
            right: -24,
            child: Transform(
              transform:
                  Matrix4.identity()
                    ..rotateX(0.2)
                    ..rotateY(.4)
                    ..rotateZ(.008),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .05),
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: TaskActivityWidget(),
              ),
            ),
          ),
          Positioned.fill(
            top: 320,
            left: 42,
            right: -24,
            bottom: 0,
            child: Transform(
              transform:
                  Matrix4.identity()
                    ..rotateX(0.2)
                    ..rotateY(.3)
                    ..rotateZ(-.1),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .05),
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: TaskActivityWidget(),
              ),
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => TaskManagementMainPage(),
                        ),
                      );
                    },
                    child: Container(
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
