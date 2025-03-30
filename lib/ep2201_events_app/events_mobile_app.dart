import 'package:flutter/material.dart';

import 'ui/events_app_home_page.dart';

class EventsMobileApp extends StatelessWidget {
  const EventsMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        // scaffoldBackgroundColor: Color.fromRGBO(245, 244, 249, 1),
      ),
      home: EventsAppHomePage(),
    );
  }
}
