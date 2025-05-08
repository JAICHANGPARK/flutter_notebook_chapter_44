import 'package:flutter/material.dart';

class Fd2HomeScreen extends StatefulWidget {
  const Fd2HomeScreen({super.key});

  @override
  State<Fd2HomeScreen> createState() => _Fd2HomeScreenState();
}

class _Fd2HomeScreenState extends State<Fd2HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(

            decoration: BoxDecoration(color: Colors.green),
            child: Column(children: []),
          ),
          Expanded(child: Placeholder()),
          Container(
            height: 82,
            decoration: BoxDecoration(
              color: Colors.white,

            ),
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
