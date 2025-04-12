import 'package:flutter/material.dart';

import 'ui/task_management_start_page.dart';

void main() {
  runApp(TaskManagementApp());
}

class TaskManagementApp extends StatelessWidget {
  const TaskManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TaskManagementStartPage());
  }
}
