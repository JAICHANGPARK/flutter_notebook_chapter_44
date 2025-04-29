import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2228_health_mobile_app/ui/weight/widget/chart_legend_item_widget.dart';
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
          spacing: 12,
          children: [
            Column(
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

            Row(
              spacing: 24,
              children: [
                ChartLegendItemWidget(
                  color: Colors.green,
                  text: "normal weight",
                ),
                ChartLegendItemWidget(
                  color: Colors.pink.shade300,
                  text: "overweight",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
