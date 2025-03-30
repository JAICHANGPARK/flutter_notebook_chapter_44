import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class EventsAppHomePage extends StatefulWidget {
  const EventsAppHomePage({super.key});

  @override
  State<EventsAppHomePage> createState() => _EventsAppHomePageState();
}

class _EventsAppHomePageState extends State<EventsAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          Expanded(child: Placeholder()),
          Row(
            children: [
              Column(
                spacing: 6,
                children: [Icon(HugeIcons.strokeRoundedHome01), Text("Home")],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
