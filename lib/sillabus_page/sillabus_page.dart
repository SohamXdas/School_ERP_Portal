// ignore_for_file: avoid_unnecessary_containers

import 'dart:ffi';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:student/Global_widgets/buttons.dart';
import 'package:student/Global_widgets/graphs/syllabus_graph.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:student/appbar_global/appbar.dart';
import 'package:student/appbar_global/drawer.dart';
import 'package:student/notification_page/notification_page.dart';

class SillabusPage extends StatefulWidget {
  const SillabusPage({super.key});

  @override
  State<SillabusPage> createState() => _SillabusPageState();
}

class _SillabusPageState extends State<SillabusPage> {
  double unit1syllanus = 82.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 11, 29, 1),
      endDrawer: const drawer(),
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          'Syllabus Report',
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
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
            child: Column(
              children: [
                Container(
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
                  child: Center(
                    child: Card(
                      elevation: 0,
                      color: const Color.fromRGBO(6, 11, 29, 1),
                      child: Column(
                        children: [
                          const Text(
                            'Overall Syllabus',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 15),
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
                                            value: unit1syllanus,
                                            color: const Color.fromRGBO(136, 136, 255, 1),
                                            showTitle: false,
                                            borderSide: BorderSide.none,
                                            radius: 20,
                                          ),
                                          PieChartSectionData(
                                            value: 100 - unit1syllanus,
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
                                              '$unit1syllanus%',
                                              style: const TextStyle(fontSize: 15),
                                            ),
                                          ),
                                          const Text(
                                            'Completed',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      //TODO: use the actuall attendence or syllabus data
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  splashColor: Colors.white38,
                                  radius: 90,
                                  borderRadius: BorderRadius.circular(12),
                                  onTap: () {
                                    setState(() {
                                      unit1syllanus = 82.0;
                                    });
                                  },
                                  child: const Button3(
                                    whichUnit: 'U1',
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.white38,
                                  radius: 90,
                                  borderRadius: BorderRadius.circular(12),
                                  onTap: () {
                                    setState(() {
                                      unit1syllanus = 66.0;
                                    });
                                  },
                                  child: const Button3(
                                    whichUnit: 'U2',
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.white38,
                                  radius: 90,
                                  borderRadius: BorderRadius.circular(12),
                                  onTap: () {
                                    setState(() {
                                      unit1syllanus = 48.0;
                                    });
                                  },
                                  child: const Button3(
                                    whichUnit: 'U3',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Chapter 8 “INTGRATION”',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'has been Completed ',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Are you satisfied ?',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 26),
                        child: InkWell(
                          splashColor: const Color.fromRGBO(136, 136, 255, 0.8),
                          borderRadius: BorderRadius.circular(8),
                          onTap: () {
                            //TODO add footer widget
                          },
                          child: const Button2(
                            yesorno: 'Yes',
                            color: Color.fromRGBO(136, 136, 255, 1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 26),
                        child: InkWell(
                          splashColor: const Color.fromRGBO(76, 79, 92, 1),
                          borderRadius: BorderRadius.circular(8),
                          onTap: () {
                            //TODO add footer widget
                          },
                          child: const Button2(
                            yesorno: 'No',
                            color: Color.fromRGBO(76, 79, 92, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Course-specific report',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 20,
                          child: InkWell(
                            splashColor: const Color.fromARGB(204, 189, 189, 255),
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              //TODO go to detailed marks page
                            },
                            child: const Button5(
                              txt: 'English',
                              height: 50,
                              width: 168,
                              buttonColor: Color.fromRGBO(240, 238, 255, 1),
                              textColor: Color.fromRGBO(6, 11, 29, 1),
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        Expanded(
                          flex: 20,
                          child: InkWell(
                            splashColor: const Color.fromARGB(204, 189, 189, 255),
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              //TODO go to detailed marks page
                            },
                            child: const Button5(
                              txt: 'Computer',
                              height: 50,
                              width: 168,
                              buttonColor: Color.fromRGBO(240, 238, 255, 1),
                              textColor: Color.fromRGBO(6, 11, 29, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          flex: 20,
                          child: InkWell(
                            splashColor: const Color.fromARGB(204, 189, 189, 255),
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              //TODO go to detailed marks page
                            },
                            child: const Button5(
                              txt: 'Hindi',
                              height: 50,
                              width: 168,
                              buttonColor: Color.fromRGBO(240, 238, 255, 1),
                              textColor: Color.fromRGBO(6, 11, 29, 1),
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        Expanded(
                          flex: 20,
                          child: InkWell(
                            splashColor: const Color.fromARGB(204, 189, 189, 255),
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              //TODO go to detailed marks page
                            },
                            child: const Button5(
                              txt: 'SST',
                              height: 50,
                              width: 168,
                              buttonColor: Color.fromRGBO(240, 238, 255, 1),
                              textColor: Color.fromRGBO(6, 11, 29, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          flex: 20,
                          child: InkWell(
                            splashColor: const Color.fromARGB(204, 189, 189, 255),
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              //TODO go to detailed marks page
                            },
                            child: const Button5(
                              txt: 'Maths',
                              height: 50,
                              width: 168,
                              buttonColor: Color.fromRGBO(240, 238, 255, 1),
                              textColor: Color.fromRGBO(6, 11, 29, 1),
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        Expanded(
                          flex: 20,
                          child: InkWell(
                            splashColor: const Color.fromARGB(204, 189, 189, 255),
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              //TODO go to detailed marks page
                            },
                            child: const Button5(
                              txt: 'Science',
                              height: 50,
                              width: 168,
                              buttonColor: Color.fromRGBO(240, 238, 255, 1),
                              textColor: Color.fromRGBO(6, 11, 29, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50)
              ],
            ),
          )
        ],
      ),
    );
  }
}
