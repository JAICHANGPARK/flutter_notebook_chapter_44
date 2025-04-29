import 'package:flutter/material.dart';

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
        actions: [Icon(Icons.more_vert)],
      ),
    );
  }
}
