// ignore_for_file: avoid_unnecessary_containers

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:student/Global_widgets/buttons.dart';
import 'package:student/appbar_global/drawer.dart';
import 'package:student/limitted_access/limitted_access_page.dart';
import 'package:student/notification_page/notification_page.dart';

class AttendencePage extends StatefulWidget {
  const AttendencePage({super.key});

  @override
  State<AttendencePage> createState() => _AttendencePageState();
}

class _AttendencePageState extends State<AttendencePage> {
  double attendence = 73;
  double classavg1 = 49.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 11, 29, 1),
      endDrawer: const drawer(),
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          'Attendence Report',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const NotificationPage();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 25, right: 8, top: 3),
              child: IconButton(
                icon: Transform.scale(
                  scale: 6.2,
                  child: Image.asset(
                    'assets/images/icons/Drawer_icon.png',
                  ),
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            );
          },
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 4),
                  child: Text(
                    'Attendence',
                    style: TextStyle(fontSize: 27.5, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Summary ',
                    style: TextStyle(
                      fontSize: 27.5,
                      fontWeight: FontWeight.w400,
                    ), // Style for the first part of the text
                    children: <TextSpan>[
                      TextSpan(
                        text: 'for ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 27.5, // Make this part bold
                        ),
                      ),
                      TextSpan(
                        text: 'Half Yearly',
                        style: TextStyle(
                          fontSize: 27.5,
                          fontWeight: FontWeight.w700,
                        ), // Style for the rest of the text
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(121, 216, 255, 0.35),
                          blurRadius: 6,
                          spreadRadius: 0,
                          blurStyle: BlurStyle.outer,
                        )
                      ],
                    ),
                    child: Card(
                      elevation: 0,
                      color: const Color.fromRGBO(6, 11, 29, 1),
                      child: Column(
                        children: [
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 15),
                              child: Text(
                                'Overall Attendance',
                                style: TextStyle(
                                  fontSize: 29,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Container(
                              child: SizedBox(
                                height: 185,
                                width: 185,
                                child: Stack(
                                  children: [
                                    PieChart(
                                      PieChartData(
                                        startDegreeOffset: 90,
                                        sections: [
                                          PieChartSectionData(
                                            value: attendence,
                                            color: const Color.fromRGBO(136, 136, 255, 1),
                                            showTitle: false,
                                            borderSide: BorderSide.none,
                                            radius: 20,
                                          ),
                                          PieChartSectionData(
                                            value: 100 - attendence,
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
                                            value: classavg1,
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
                                            value: 100 - (classavg1 + 3),
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
                                    Center(
                                      child: Text(
                                        '$attendence%',
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      // use the actuall attendence or syllabus data
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 12,
                                          width: 12,
                                          child: ColoredBox(
                                            color: Color.fromRGBO(50, 47, 200, 1),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Text(
                                            'Your Attendence',
                                            style: TextStyle(
                                              fontSize: 15.5,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: const Padding(
                                    padding: EdgeInsets.only(right: 0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 12,
                                          width: 12,
                                          child: ColoredBox(
                                            color: Color.fromRGBO(231, 63, 118, 1),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Text(
                                            'Class Attendence',
                                            style: TextStyle(
                                              fontSize: 15.5,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      splashColor: Colors.white38,
                      radius: 90,
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        setState(() {
                          attendence = 73.0;
                          classavg1 = 49.5;
                        });
                      },
                      child: const Button3(
                        whichUnit: '1M',
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.white38,
                      radius: 90,
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        setState(() {
                          attendence = 70.0;
                          classavg1 = 60.5;
                        });
                      },
                      child: const Button3(
                        whichUnit: '3M',
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.white38,
                      radius: 90,
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        setState(() {
                          attendence = 82.0;
                          classavg1 = 68.5;
                        });
                      },
                      child: const Button3(
                        whichUnit: '6M',
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: InkWell(
                      splashColor: Colors.white38,
                      borderRadius: BorderRadius.circular(12),
                      onDoubleTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const LimitedAccessPage();
                            },
                          ),
                        );
                      },
                      child: const Button1(txt: 'Click for detailed Report'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
