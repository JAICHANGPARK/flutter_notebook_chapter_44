import 'package:flutter/material.dart';


class Fd2CartPage extends StatefulWidget {
  const Fd2CartPage({super.key});

  @override
  State<Fd2CartPage> createState() => _Fd2CartPageState();
}

class _Fd2CartPageState extends State<Fd2CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Expanded(child: Placeholder()),
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .05),
                  spreadRadius: 10,
                  blurRadius: 5,
                )
              ]
            ),
            child: Row(
              children: [
                  Text("US \$2.99"),
                Container(decoration: ShapeDecoration(shape: shape),)
              ],
            ),
          )
        ],
      )),
    );
  }
}
