import 'package:flutter/material.dart';


class TaskManagementMainPage extends StatefulWidget {
  const TaskManagementMainPage({super.key});

  @override
  State<TaskManagementMainPage> createState() => _TaskManagementMainPageState();
}

class _TaskManagementMainPageState extends State<TaskManagementMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 12,
                children: [
                  CircleAvatar(
                    radius: 24,
                  ),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 6,
                    children: [
                    Text("Hi 👋 Dream!"),
                    Text("Welcome Back!")
                  ],)),
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.add_circle_rounded,color: Colors.white,),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
