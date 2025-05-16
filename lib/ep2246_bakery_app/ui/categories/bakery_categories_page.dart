import 'package:flutter/material.dart';

import '../widgets/bakery_bottom_bar_widget.dart';

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
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,

                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12
                ),
                itemBuilder: (context, index) {
                  return Column(
                    spacing: 6,
                    children: [Expanded(child: Placeholder()), Text("Bread")],
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BakeryBottomBarWidget(),
          ),
        ],
      ),
    );
  }
}
