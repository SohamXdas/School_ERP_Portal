// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:student/Global_widgets/buttons.dart';
import 'package:student/appbar_global/drawer.dart';
import 'package:student/Global_widgets/graphs/performance_graphs.dart';
import 'package:student/notification_page/notification_page.dart';

class PerformanceReportPage extends StatelessWidget {
  const PerformanceReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 11, 29, 1),
      endDrawer: const drawer(),
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          'Performance Report',
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
                      fontSize: 30,
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
                const Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Subject Reports',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
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
                              height: 48,
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
                              height: 48,
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
                              height: 48,
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
                              height: 48,
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
                              height: 48,
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
                              height: 48,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
