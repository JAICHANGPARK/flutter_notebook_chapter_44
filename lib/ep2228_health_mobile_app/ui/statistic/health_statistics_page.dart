import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2228_health_mobile_app/ui/weight/widget/chart_legend_item_widget.dart';

class HealthStatisticsPage extends StatefulWidget {
  const HealthStatisticsPage({super.key});

  @override
  State<HealthStatisticsPage> createState() => _HealthStatisticsPageState();
}

class _HealthStatisticsPageState extends State<HealthStatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Current week",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.calendar_month),
                      color: Colors.white,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  spacing: 24,
                  children: [
                    ChartLegendItemWidget(
                      color: Colors.pink.shade300,
                      text: "fat",
                    ),
                    ChartLegendItemWidget(
                      color: Colors.orange.shade300,
                      text: "protein",
                    ),
                    ChartLegendItemWidget(color: Colors.green, text: "carbs"),
                    ChartLegendItemWidget(
                      color: Colors.white,
                      text: "activity",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Placeholder(),
            ),
          ),

          Container(
            height: 170,
            margin: EdgeInsets.only(left: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 12),
                  width: 320,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'fried eggs with tomatoes\nand bacon',
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            "62",
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("kcal"),
                          Spacer(),
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            child: Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
