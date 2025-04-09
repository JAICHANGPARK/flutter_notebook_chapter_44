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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                CircleAvatar(),
                Expanded(child: Center(child: Text("Details"))),
                CircleAvatar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
