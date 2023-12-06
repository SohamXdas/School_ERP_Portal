// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:student/Global_widgets/buttons.dart';
import 'package:student/Preformance_report_page/detailed_performance_report_page.dart';
import 'package:student/appbar_global/drawer.dart';
import 'package:student/Global_widgets/graphs/performance_graphs.dart';
import 'package:student/Global_widgets/graphs/syllabus_graph.dart';
import 'package:student/notification_page/notification_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 11, 29, 1),
      endDrawer: drawer(),
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          'Home Page',
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
            padding: const EdgeInsets.only(left: 25, right: 20, top: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 4),
                  child: Text(
                    'Congratulations!!',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: 'You ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ), // Style for the first part of the text
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Outperforming',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24, // Make this part bold
                        ),
                      ),
                      TextSpan(
                        text: ' your peers 🎉',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ), // Style for the rest of the text
                      ),
                    ],
                  ),
                ),

                // hero widget (The fucking graph)
                Padding(
                  padding: const EdgeInsets.only(top: 25, right: 15),
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
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                'Overall Performance',
                                style: TextStyle(
                                  fontSize: 29,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Container(
                              child: preformance_overview_graph(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 0),
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
                                            'Class Average',
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
                                            'Your Performance',
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
                //*Button1
                Padding(
                  padding: const EdgeInsets.only(left: 65, right: 65, top: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const PerformanceReportPage();
                          },
                        ),
                      );
                    },
                    splashColor: const Color.fromRGBO(136, 136, 255, 0.8),
                    borderRadius: BorderRadius.circular(15),
                    child: const Button1(
                      txt: 'Click for detailed Report',
                    ),
                  ),
                ),
                // Text('Chapter 8 "INTGRATION" has been Completed '),
                const Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Chapter 8 “INTGRATION”',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'has been Completed ',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Are you satisfied ?',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w800,
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
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Text(
                    'Overall Syllabus',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 15),
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
                    child: Center(
                      child: Card(
                        elevation: 0,
                        color: const Color.fromRGBO(6, 11, 29, 1),
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20, bottom: 15),
                                child: syllabusGraph(),
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
                                      // TODO Need to Change graph
                                    },
                                    //! splash effect
                                    child: const Button3(
                                      whichUnit: 'U1',
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.white38,
                                    radius: 90,
                                    borderRadius: BorderRadius.circular(12),
                                    onTap: () {
                                      // TODO Need to Change graph
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
                                      // TODO Need to Change graph
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65, right: 65, top: 25, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return const PerformanceReportPage();
                      //     },
                      //   ),
                      // );
                      //! TODO Make sillabus page
                    },
                    splashColor: const Color.fromRGBO(136, 136, 255, 0.8),
                    borderRadius: BorderRadius.circular(15),
                    child: const Button1(
                      txt: 'Click for Syllabus Report',
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
