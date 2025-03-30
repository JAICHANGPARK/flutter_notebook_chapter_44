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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Column(
                  spacing: 6,
                  children: [
                    Icon(HugeIcons.strokeRoundedHome01),
                    Text("Home", style: TextStyle(
                      fontSize: 12,
                    )),
                  ],
                ),
                Column(
                  spacing: 6,
                  children: [
                    Icon(HugeIcons.strokeRoundedHome01),
                    Text("Home", style: TextStyle(
                      fontSize: 12,
                    )),
                  ],
                ),
                Column(
                  spacing: 6,
                  children: [
                    Icon(HugeIcons.strokeRoundedCalendar01),
                    Text("Bookings", style: TextStyle(
                      fontSize: 12,
                    )),
                  ],
                ),
                Column(
                  spacing: 6,
                  children: [
                    Icon(HugeIcons.strokeRoundedUser),
                    Text("Profile", style: TextStyle(
                      fontSize: 12,
                    )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
