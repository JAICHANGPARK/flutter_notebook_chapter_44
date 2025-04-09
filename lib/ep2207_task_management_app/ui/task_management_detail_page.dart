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
      backgroundColor: Colors.white,
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
                    ),
                    Expanded(child: Center(child: Text("Details"))),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
