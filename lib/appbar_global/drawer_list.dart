import 'package:flutter/material.dart';
import 'package:student/Home%20page/home_page.dart';
import 'package:student/Preformance_report_page/detailed_performance_report_page.dart';
import 'package:student/Time%20Table/timetable.dart';
import 'package:student/attendence_page/attendence_page.dart';
import 'package:student/carrier_counsilling_page/carrier_counsilling_page.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const Homepage();
                  },
                ),
              );
            },
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 25,
                  child: Image.asset(
                    'assets/images/icons/Home.png',
                    color: const Color.fromRGBO(105, 86, 229, 1),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Color.fromRGBO(105, 86, 229, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const PerformanceReportPage();
                  },
                ),
              );
            },
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 25,
                  child: Image.asset(
                    'assets/images/icons/performance.png',
                    color: const Color.fromRGBO(105, 86, 229, 1),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Performance',
                    style: TextStyle(
                      color: Color.fromRGBO(105, 86, 229, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const AttendencePage();
                  },
                ),
              );
            },
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 25,
                  child: Image.asset(
                    'assets/images/icons/attendence.png',
                    color: const Color.fromRGBO(105, 86, 229, 1),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Attendance',
                    style: TextStyle(
                      color: Color.fromRGBO(105, 86, 229, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //TODO: CarrerCouncilling button
          TextButton(
            onPressed: () {
              // TODO: Go to Carrer_Councilling page
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return CarrierCounsilling();
                  },
                ),
              );
            },
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 25,
                  child: Image.asset(
                    'assets/images/icons/counselor.png',
                    color: const Color.fromRGBO(105, 86, 229, 1),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Career Counselling',
                    style: TextStyle(
                      color: Color.fromRGBO(105, 86, 229, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 25,
                  child: Image.asset(
                    'assets/images/icons/question.png',
                    color: const Color.fromRGBO(105, 86, 229, 1),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Question Bank',
                    style: TextStyle(
                      color: Color.fromRGBO(105, 86, 229, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              // TODO: make Silla bs page
            },
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 25,
                  child: Image.asset(
                    'assets/images/icons/syllabus.png',
                    color: const Color.fromRGBO(105, 86, 229, 1),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Syllabus',
                    style: TextStyle(
                      color: Color.fromRGBO(105, 86, 229, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const Timetable();
                  },
                ),
              );
            },
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 25,
                  child: Image.asset(
                    'assets/images/icons/timetable.png',
                    color: const Color.fromRGBO(105, 86, 229, 1),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Time table',
                    style: TextStyle(
                      color: Color.fromRGBO(105, 86, 229, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
