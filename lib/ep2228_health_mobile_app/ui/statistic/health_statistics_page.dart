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
                  children: [
                    Text("Current week", style: TextStyle(color: Colors.white,
                      fontSize: 24,
                    )),
                    IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month)),
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
                    ChartLegendItemWidget(
                      color: Colors.green,
                      text: "carbs",
                    ),
                    ChartLegendItemWidget(
                      color: Colors.white,
                      text: "activity",
                    ),
                  ],
                ),

              ],
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Placeholder(),
          )),

          Container(
            height: 160,
            margin: EdgeInsets.only(
              left: 16
            ),
            child: ListView.builder(

              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(
                  right: 12,
                ),
                width: 320,
                child: Placeholder(),
              );
            },),
          )
        ],
      ),
    );
  }
}
