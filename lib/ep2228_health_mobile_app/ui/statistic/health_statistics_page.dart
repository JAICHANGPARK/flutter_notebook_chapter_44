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
          Expanded(child: Placeholder()),
          Container(
            height: 160,
            child: ListView.builder(itemBuilder: (context,index){
              return Container(
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
