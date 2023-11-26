import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

SizedBox preformance_overview_graph() {
  return SizedBox(
    height: 230,
    width: 275,
    child: LineChart(
      LineChartData(
        backgroundColor: Colors.transparent,
        minY: 10.0,
        maxY: 115.0,
        minX: 0.0,
        maxX: 6.0,

        gridData: FlGridData(
          drawVerticalLine: false,
        ),
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 50),
              FlSpot(1, 60),
              FlSpot(2, 40),
              FlSpot(3, 20),
              FlSpot(4, 60),
              FlSpot(5, 80),
              FlSpot(6, 60),
            ],
            isStrokeCapRound: true,
            isStrokeJoinRound: true,
            curveSmoothness: 0.29,
            dotData: FlDotData(show: false),
            color: Color.fromRGBO(50, 47, 200, 1),
            isCurved: true,
            barWidth: 5,
            belowBarData: BarAreaData(
              show: true,
              color: Color.fromRGBO(50, 47, 200, 0.12),
            ),
          ),
          LineChartBarData(
            spots: [
              FlSpot(0, 70),
              FlSpot(1, 50),
              FlSpot(2, 70),
              FlSpot(3, 60),
              FlSpot(4, 30),
              FlSpot(5, 50),
              FlSpot(6, 90),
            ],
            isStrokeCapRound: true,
            isStrokeJoinRound: true,
            curveSmoothness: 0.4,
            dotData: FlDotData(show: false),
            color: Color.fromRGBO(231, 63, 118, 1),
            isCurved: true,
            barWidth: 5,
            belowBarData: BarAreaData(
              show: true,
              color: Color.fromRGBO(231, 63, 118, 0.12),
            ),
          ),
        ],
        //Border needed
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: Colors.transparent,
            width: 1,
          ),
        ),

        titlesData: FlTitlesData(
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              getTitlesWidget: (value, meta) {
                String text = '';
                switch (value.toInt()) {
                  case 20:
                    text = ' 20';
                    break;
                  case 40:
                    text = ' 40';
                    break;
                  case 60:
                    text = ' 60';
                    break;
                  case 80:
                    text = ' 80';
                    break;
                  case 100:
                    text = '100';
                    break;
                }
                return Text(
                  text,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    color: Color.fromRGBO(147, 147, 147, 1),
                  ),
                );
              },
              showTitles: true,
              reservedSize: 30,
            ),
          ),
        ),
      ),
    ),
  );
}
