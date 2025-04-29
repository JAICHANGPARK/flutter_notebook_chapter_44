import 'package:flutter/material.dart';

class ChartLegendItemWidget extends StatelessWidget {
  final Color? color;
  final String? text;

  const ChartLegendItemWidget({super.key, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
        spacing: 8,
        children: [
      CircleAvatar(
        radius: 7,
        backgroundColor: color,
      ),
          Text(text ?? "-", style: TextStyle(

          ),)

    ]);
  }
}
