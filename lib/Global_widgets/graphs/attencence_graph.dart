import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

SizedBox attendenceGraph() {
  return SizedBox(
    height: 185,
    width: 185,
    child: Stack(
      children: [
        PieChart(
          PieChartData(
            startDegreeOffset: 90,
            sections: [
              PieChartSectionData(
                value: 73,
                color: const Color.fromRGBO(136, 136, 255, 1),
                showTitle: false,
                borderSide: BorderSide.none,
                radius: 20,
              ),
              PieChartSectionData(
                value: 27,
                color: const Color.fromRGBO(44, 48, 63, 1),
                showTitle: false,
                borderSide: BorderSide.none,
                radius: 20,
              ),
            ],
          ),
        ),
        PieChart(
          PieChartData(
            startDegreeOffset: 90,
            sections: [
              PieChartSectionData(
                value: 49.5,
                color: Colors.transparent,
                showTitle: false,
                borderSide: BorderSide.none,
                radius: 20,
              ),
              PieChartSectionData(
                value: 3,
                color: const Color.fromRGBO(149, 2, 2, 1),
                showTitle: false,
                borderSide: BorderSide.none,
                radius: 20,
              ),
              PieChartSectionData(
                value: 49.5,
                color: Colors.transparent,
                showTitle: false,
                borderSide: BorderSide.none,
                radius: 20,
              ),
            ],
          ),
        ),
        Center(
          child: SizedBox(
            width: 108,
            height: 108,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: const Color.fromRGBO(136, 136, 255, 1),
                ),
                borderRadius: BorderRadius.circular(80),
              ),
            ),
          ),
        ),
        const Center(
          child: Text(
            '73%',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          //*use the actuall attendence or syllabus data
        ),
      ],
    ),
  );
}
