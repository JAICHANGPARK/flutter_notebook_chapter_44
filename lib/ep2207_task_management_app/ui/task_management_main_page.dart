import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2207_task_management_app/ui/widgets/task_activity_widget.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TaskManagementMainPage extends StatefulWidget {
  const TaskManagementMainPage({super.key});

  @override
  State<TaskManagementMainPage> createState() => _TaskManagementMainPageState();
}

class _TaskManagementMainPageState extends State<TaskManagementMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
          child: Column(
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 12,
                children: [
                  CircleAvatar(radius: 24),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 6,
                      children: [Text("Hi 👋 Dream!"), Text("Welcome Back!")],
                    ),
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.add_circle_rounded, color: Colors.white),
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.white,
                    child: Badge(
                      child: Icon(HugeIcons.strokeRoundedNotification02),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        // height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 12,
                          children: [
                            Text("Your Progress"),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "You are doing\nwell 😊",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                                Text("72%", style: TextStyle(fontSize: 52)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Gap(4),
                      Text("Recent Activity", style: TextStyle(fontSize: 20)),
                      Container(
                        height: 42,
                        padding: EdgeInsets.all(2),
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.grey[200]!,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Colors.white,
                                ),
                                child: Center(child: Text("All")),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                ),
                                child: Center(
                                  child: Text(
                                    "Upcoming",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                ),
                                child: Center(
                                  child: Text(
                                    "Meeting",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                ),
                                child: Center(
                                  child: Text(
                                    "Projects",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ...[
                        TaskActivityWidget(),
                        TaskActivityWidget(),
                        TaskActivityWidget(),
                        TaskActivityWidget(),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
