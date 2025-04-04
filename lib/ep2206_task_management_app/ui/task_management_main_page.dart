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
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(),
              Expanded(child: Column(children: [
                Text("Hi 👋 Dream!"),
                Text("Welcome Back!")
              ],))
            ],
          )
        ],
      ),
    );
  }
}
