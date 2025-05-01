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
        spacing: 12,
        children: [
          Column(
            children: [

            ],
          ),

          Expanded(child: Placeholder()),
          Container(
            height: 160,
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
