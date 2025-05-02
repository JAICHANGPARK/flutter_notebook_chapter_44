import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_44/ep2228_health_mobile_app/ui/weight/widget/chart_legend_item_widget.dart';
import 'package:fl_chart/fl_chart.dart';

class HealthStatisticsPage extends StatefulWidget {
  const HealthStatisticsPage({super.key});

  @override
  State<HealthStatisticsPage> createState() => _HealthStatisticsPageState();
}

class _HealthStatisticsPageState extends State<HealthStatisticsPage> {
  final Color fatColor = Colors.pink[300]!;
  final Color proteinColor = Colors.yellow[600]!;
  final Color carbsColor = Colors.green[500]!;
  final activityColor = Colors.grey[300]!;

  List<List<double>> weeklyData = [
    [20, 40, 30, 10],
    [15, 35, 25, 5],
    [10, 20, 15, 5],
    [25, 40, 20, 15],
    [15, 35, 45, 30],
    [10, 50, 30, 20],
    [20, 30, 25, 10],
  ];

  List<BarChartGroupData> barGroups = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    barGroups = List.generate(7, (index) {
      final data = weeklyData[index];
      List<BarChartRodStackItem> rodStacks = [];
      double startY = 0;
      if (data[0] > 0) {
        rodStacks.add(
          BarChartRodStackItem(startY, startY += data[0], activityColor),
        );
      }
      if (data[1] > 0) {
        rodStacks.add(
          BarChartRodStackItem(startY, startY += data[1], carbsColor),
        );
      }

      if (data[2] > 0) {
        rodStacks.add(
          BarChartRodStackItem(startY, startY += data[2], proteinColor),
        );
      }
      if (data[3] > 0) {
        rodStacks.add(
          BarChartRodStackItem(startY, startY += data[3], fatColor),
        );
      }


    });
  }

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
              child: Column(
                spacing: 12,
                children: [
                  Expanded(
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceAround,
                        barTouchData: BarTouchData(enabled: false),
                        titlesData: FlTitlesData(
                          show: true,
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: true),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),
                        gridData: FlGridData(show: false),
                        borderData: FlBorderData(show: false),
                        barGroups: [
                          BarChartGroupData(
                            x: 0,
                            barsSpace: 8,
                            barRods: [
                              BarChartRodData(
                                toY: 100,
                                width: 48,
                                borderRadius: BorderRadius.zero,

                                rodStackItems: [
                                  BarChartRodStackItem(0, 20, Colors.white),
                                  BarChartRodStackItem(20, 40, Colors.green),
                                  BarChartRodStackItem(
                                    40,
                                    80,
                                    Colors.orange.shade300,
                                  ),
                                  BarChartRodStackItem(
                                    80,
                                    100,
                                    Colors.pink.shade300,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          BarChartGroupData(
                            x: 1,
                            barRods: [
                              BarChartRodData(
                                toY: 100,
                                width: 48,
                                borderRadius: BorderRadius.zero,

                                rodStackItems: [
                                  BarChartRodStackItem(0, 20, Colors.white),
                                  BarChartRodStackItem(20, 40, Colors.green),
                                  BarChartRodStackItem(
                                    40,
                                    80,
                                    Colors.orange.shade300,
                                  ),
                                  BarChartRodStackItem(
                                    80,
                                    100,
                                    Colors.pink.shade300,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          BarChartGroupData(
                            x: 2,
                            barRods: [
                              BarChartRodData(
                                toY: 100,
                                width: 48,
                                borderRadius: BorderRadius.zero,

                                rodStackItems: [
                                  BarChartRodStackItem(0, 20, Colors.white),
                                  BarChartRodStackItem(20, 40, Colors.green),
                                  BarChartRodStackItem(
                                    40,
                                    80,
                                    Colors.orange.shade300,
                                  ),
                                  BarChartRodStackItem(
                                    80,
                                    100,
                                    Colors.pink.shade300,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          BarChartGroupData(
                            x: 3,
                            barRods: [
                              BarChartRodData(
                                toY: 100,
                                width: 48,
                                borderRadius: BorderRadius.zero,

                                rodStackItems: [
                                  BarChartRodStackItem(0, 20, Colors.white),
                                  BarChartRodStackItem(20, 40, Colors.green),
                                  BarChartRodStackItem(
                                    40,
                                    80,
                                    Colors.orange.shade300,
                                  ),
                                  BarChartRodStackItem(
                                    80,
                                    100,
                                    Colors.pink.shade300,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          BarChartGroupData(
                            x: 4,
                            barRods: [
                              BarChartRodData(
                                toY: 100,
                                width: 48,
                                borderRadius: BorderRadius.zero,

                                rodStackItems: [
                                  BarChartRodStackItem(0, 20, Colors.white),
                                  BarChartRodStackItem(20, 40, Colors.green),
                                  BarChartRodStackItem(
                                    40,
                                    80,
                                    Colors.orange.shade300,
                                  ),
                                  BarChartRodStackItem(
                                    80,
                                    100,
                                    Colors.pink.shade300,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          BarChartGroupData(
                            x: 5,
                            barRods: [
                              BarChartRodData(
                                toY: 100,
                                width: 48,
                                borderRadius: BorderRadius.zero,

                                rodStackItems: [
                                  BarChartRodStackItem(0, 20, Colors.white),
                                  BarChartRodStackItem(20, 40, Colors.green),
                                  BarChartRodStackItem(
                                    40,
                                    80,
                                    Colors.orange.shade300,
                                  ),
                                  BarChartRodStackItem(
                                    80,
                                    100,
                                    Colors.pink.shade300,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          BarChartGroupData(
                            x: 6,
                            barsSpace: 12,
                            barRods: [
                              BarChartRodData(
                                toY: 100,
                                width: 48,
                                borderRadius: BorderRadius.zero,

                                rodStackItems: [
                                  BarChartRodStackItem(0, 20, Colors.white),
                                  BarChartRodStackItem(20, 40, Colors.green),
                                  BarChartRodStackItem(
                                    40,
                                    80,
                                    Colors.orange.shade300,
                                  ),
                                  BarChartRodStackItem(
                                    80,
                                    100,
                                    Colors.pink.shade300,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Mon", style: TextStyle(color: Colors.white)),
                      Text("Tue", style: TextStyle(color: Colors.white)),
                      Text("Wed", style: TextStyle(color: Colors.white)),
                      Text("Thu", style: TextStyle(color: Colors.white)),
                      Text("Fri", style: TextStyle(color: Colors.white)),
                      Text("Sat", style: TextStyle(color: Colors.white)),
                      Text("Sun", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Container(
            height: 160,
            margin: EdgeInsets.only(left: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 12),
                  width: 320,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  color: Colors.white,
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
                            child: Transform.rotate(
                              angle: -pi / 4,
                              child: Icon(Icons.arrow_forward),
                            ),
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
