import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

// ignore: camel_case_types
class syllabusGraph extends StatefulWidget {
  const syllabusGraph({super.key});

  @override
  State<syllabusGraph> createState() => _syllabusGraphState();
}

// ignore: camel_case_types
class _syllabusGraphState extends State<syllabusGraph> {
  double nit1syllabus = 82;

  @override
  Widget build(BuildContext context) {
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
                  value: nit1syllabus,
                  color: const Color.fromRGBO(136, 136, 255, 1),
                  showTitle: false,
                  borderSide: BorderSide.none,
                  radius: 20,
                ),
                PieChartSectionData(
                  value: 100 - nit1syllabus,
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    '$nit1syllabus%',
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
                const Text(
                  'Completed',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            // use the actuall attendence or syllabus data
          ),
        ],
      ),
    );
  }
}
