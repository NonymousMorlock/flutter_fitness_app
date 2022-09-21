import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/res/MyColors.dart';

import 'res/constants.dart';

class MyLineChart extends StatefulWidget {
  const MyLineChart({super.key});
  @override
  State<MyLineChart> createState() => _MyLineChartState();
}

class _MyLineChartState extends State<MyLineChart> {
  List<Color> gradientColors = [
    const Color(0xffF0CABD),
    MyColor.secondary,
    MyColor.secondary,
    const Color(0xffF0CABD),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            child: LineChart(
              mainData()
            ),
          ),
        )
      ],
    );
  }

  LineChartData mainData(){
    return LineChartData(
      gridData: FlGridData(
        show: false
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 22,
              getTitlesWidget: (value, tMeta){
                switch(value.toInt()){
                  case 2 : return const Text(
                    "1 km",
                    style: kSideTitlesTextStyle,
                  );
                  case 4 : return const Text(
                    "2 km",
                    style: kSideTitlesTextStyle,
                  );
                  case 6 : return const Text(
                    "3 km",
                    style: kSideTitlesTextStyle,
                  );
                  case 8 : return const Text(
                    "4 km",
                    style: kSideTitlesTextStyle,
                  );
                  case 10 : return const Text(
                    "5 km",
                    style: kSideTitlesTextStyle,
                  );
                }
                return const Text(
                  "",
                  style: kSideTitlesTextStyle,
                );
              },
              interval: 8
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
              showTitles: false
          ),
        ),
      ),
      borderData: FlBorderData(show: false),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2, 2),
            FlSpot(4, 5),
            FlSpot(6, 3.1),
            FlSpot(8, 4),
            FlSpot(10, 3),
            FlSpot(12, 7),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors
          ),
          barWidth: 5,
          isStrokeCapRound: false,
          dotData: FlDotData(
            show: false
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
            ),
          )
        )
      ]
    );
  }
}
