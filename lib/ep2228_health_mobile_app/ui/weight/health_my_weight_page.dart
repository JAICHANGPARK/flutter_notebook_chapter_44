import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2228_health_mobile_app/ui/weight/widget/chart_legend_item_widget.dart';
import 'package:gap/gap.dart';

class HealthMyWeightPage extends StatefulWidget {
  const HealthMyWeightPage({super.key});

  @override
  State<HealthMyWeightPage> createState() => _HealthMyWeightPageState();
}

class _HealthMyWeightPageState extends State<HealthMyWeightPage> {
  final List<String> yAxisLabels = [
    "80 kg",
    "70 kg",
    "60 kg",
    "50 kg",
    "40 kg",
    "30 kg",
    "20 kg",
    "10 kg",
  ];

  Map<String, List<int>> weightData = {
    'Jan': [1, 1, 1, 1, 1, 0, 0, 0],
    'Feb': [1, 1, 1, 1, 1, 0, 0, 0],
  };

  @override
  Widget build(BuildContext context) {
    final months = weightData.keys.toList(); // 월 목록
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
          spacing: 24,
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
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 42,
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          yAxisLabels
                              .map(
                                (e) => Text(
                                  e,
                                  style: TextStyle(
                                    // fontSize: 12,
                                    // color: Colors.grey,
                                  ),
                                ),
                              )
                              .toList(),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: Placeholder()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                              months
                                  .map(
                                    (e) => Text(
                                      e,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                  .toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Update weight",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
