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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
          child: Column(
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
              Expanded(child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Container(height: 100, child: Placeholder()),
                    Text("Recent Activity"),
                    Container(height: 42, child: Placeholder()),
                    Container(height: 200, child: Placeholder()),
                    Container(height: 200, child: Placeholder()),
                  ],
                ),
              )),

            ],
          ),
        ),
      ),
    );
  }
}
