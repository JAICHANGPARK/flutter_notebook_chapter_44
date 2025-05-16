import 'package:flutter/material.dart';

class BakeryCategoriesPage extends StatefulWidget {
  const BakeryCategoriesPage({super.key});

  @override
  State<BakeryCategoriesPage> createState() => _BakeryCategoriesPageState();
}

class _BakeryCategoriesPageState extends State<BakeryCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Categories")),
      body: Stack(
        children: [

        ],
      ),
    );
  }
}
