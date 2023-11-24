import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

SizedBox syllabusGraph() {
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
                value: 82,
                color: const Color.fromRGBO(136, 136, 255, 1),
                showTitle: false,
                borderSide: BorderSide.none,
                radius: 20,
              ),
              PieChartSectionData(
                value: 18,
                color: const Color.fromRGBO(44, 48, 63, 1),
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
        // TODO Animations
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  '82%',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Text(
                'Completed',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          //TODO: use the actuall attendence or syllabus data
        ),
      ],
    ),
  );
}
