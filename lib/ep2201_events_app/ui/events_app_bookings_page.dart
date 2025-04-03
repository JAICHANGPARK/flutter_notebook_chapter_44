import 'package:flutter/material.dart';


class EventsAppBookingsPage extends StatefulWidget {
  const EventsAppBookingsPage({super.key});

  @override
  State<EventsAppBookingsPage> createState() => _EventsAppBookingsPageState();
}

class _EventsAppBookingsPageState extends State<EventsAppBookingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 48,
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[200]!),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  spacing: 6,
                  children: [
                    Icon(Icons.search_outlined),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Find Event...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
