import 'package:flutter/material.dart';

class HealthMainPage extends StatefulWidget {
  const HealthMainPage({super.key});

  @override
  State<HealthMainPage> createState() => _HealthMainPageState();
}

class _HealthMainPageState extends State<HealthMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Home"),
        ],
      ),
    );
  }
}
