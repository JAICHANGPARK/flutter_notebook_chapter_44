import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HealthMyWeightPage extends StatefulWidget {
  const HealthMyWeightPage({super.key});

  @override
  State<HealthMyWeightPage> createState() => _HealthMyWeightPageState();
}

class _HealthMyWeightPageState extends State<HealthMyWeightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("My weight"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your goal",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            Gap(8),
            Text(
              "50kg",
              style: TextStyle(
                fontSize: 72,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
