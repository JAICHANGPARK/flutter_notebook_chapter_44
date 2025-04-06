import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 12,
                          children: [
                            Text("Your Progress"),
                            Row(
                              children: [
                                Expanded(child: Text("You are doing well 😊")),
                                Text("72%"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Text("Recent Activity"),
                      Container(height: 42, child: Placeholder()),
                      Container(height: 260, child: Placeholder()),
                      Container(height: 260, child: Placeholder()),
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
