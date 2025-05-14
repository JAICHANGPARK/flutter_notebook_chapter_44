import 'package:flutter/material.dart';


class BakeryHomePage extends StatefulWidget {
  const BakeryHomePage({super.key});

  @override
  State<BakeryHomePage> createState() => _BakeryHomePageState();
}

class _BakeryHomePageState extends State<BakeryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          Positioned.fill(child: Column(children: [

          ],)),

          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container())

        ],
      ),
    );
  }
}
