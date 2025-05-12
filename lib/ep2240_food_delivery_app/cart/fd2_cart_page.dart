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
                  color: Colors.black.withValues(alpha: .1),
                  spreadRadius: 9,
                  blurRadius: 3
                )
              ]
            ),
            child: Row(
              children: [

              ],
            ),
          )
        ],
      )),
    );
  }
}
