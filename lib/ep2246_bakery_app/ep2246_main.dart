import 'package:flutter/material.dart';

import 'ui/home/bakery_home_page.dart';


void main() {
  runApp(BakeryApp());
}

class BakeryApp extends StatelessWidget {
  const BakeryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BakeryHomePage(),
    );
  }
}
