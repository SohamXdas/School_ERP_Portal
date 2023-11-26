import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/appbar_global/drawer.dart';
import 'package:student/Global_widgets/graphs/performance_graphs.dart';

class MathsMarksReportPage extends StatelessWidget {
  const MathsMarksReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 11, 29, 1),
      endDrawer: drawer(),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Maths report',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Go to notification page
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
            padding: const EdgeInsets.only(top: 20, bottom: 35),
            child: SizedBox(
              height: 415,
              width: 345,
              child: SvgPicture.asset("assets/images/icons/marks_rpt.svg"),
            ),
          ),
          //! Use this to make real chart in the production app
          // Padding(
          //   padding: const EdgeInsets.only(left: 25, right: 25),
          //   child: SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: DataTable(
          //       columns: const [
          //         DataColumn(
          //             label: Padding(
          //           padding: EdgeInsets.only(),
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text('Test Name'),
          //             ],
          //           ),
          //         )),
          //         DataColumn(
          //           numeric: true,
          //           label: Column(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //               Text('Full'),
          //               Text('Marks'),
          //             ],
          //           ),
          //         ),
          //         DataColumn(
          //           numeric: true,
          //           label: Column(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //               Text('Your'),
          //               Text('Marks'),
          //             ],
          //           ),
          //         ),
          //         DataColumn(
          //           numeric: true,
          //           label: Column(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //               Text('Class'),
          //               Text('Avg'),
          //             ],
          //           ),
          //         ),
          //       ],
          //       rows: const [
          //         DataRow(
          //           cells: [
          //             DataCell(
          //               Column(
          //                 children: [
          //                   Text('Unit 1'),
          //                   Text('date'),
          //                 ],
          //               ),
          //             ),
          //             DataCell(
          //               Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   Text('30'),
          //                 ],
          //               ),
          //             ),
          //             DataCell(
          //               Text('22'),
          //             ),
          //             DataCell(
          //               Text('20'),
          //             ),
          //           ],
          //         ),
          //         DataRow(
          //           cells: [
          //             DataCell(
          //               Column(
          //                 children: [
          //                   Text('Unit 1'),
          //                   Text('date'),
          //                 ],
          //               ),
          //             ),
          //             DataCell(
          //               Text('30'),
          //             ),
          //             DataCell(
          //               Text('28'),
          //             ),
          //             DataCell(
          //               Text('25'),
          //             ),
          //           ],
          //         ),
          //         DataRow(
          //           cells: [
          //             DataCell(
          //               Column(
          //                 children: [
          //                   Text('Unit 1'),
          //                   Text('date'),
          //                 ],
          //               ),
          //             ),
          //             DataCell(
          //               Text('100'),
          //             ),
          //             DataCell(
          //               Text('82'),
          //             ),
          //             DataCell(
          //               Text('78'),
          //             ),
          //           ],
          //         ),
          //         DataRow(
          //           cells: [
          //             DataCell(
          //               Column(
          //                 children: [
          //                   Text('Unit 1'),
          //                   Text('date'),
          //                 ],
          //               ),
          //             ),
          //             DataCell(
          //               Text('30'),
          //             ),
          //             DataCell(
          //               Text('20'),
          //             ),
          //             DataCell(
          //               Text('23'),
          //             ),
          //           ],
          //         ),
          //         DataRow(
          //           cells: [
          //             DataCell(
          //               Column(
          //                 children: [
          //                   Text('Unit 1'),
          //                   Text('date'),
          //                 ],
          //               ),
          //             ),
          //             DataCell(
          //               Text('30'),
          //             ),
          //             DataCell(
          //               Text('20'),
          //             ),
          //             DataCell(
          //               Text('23'),
          //             ),
          //           ],
          //         ),
          //         DataRow(
          //           cells: [
          //             DataCell(
          //               Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   Text('Unit 1'),
          //                   Text('date'),
          //                 ],
          //               ),
          //             ),
          //             DataCell(
          //               Text('100'),
          //             ),
          //             DataCell(
          //               Text('88'),
          //             ),
          //             DataCell(
          //               Text('79'),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 50),
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
                          'Maths Performance',
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
        ],
      ),
    );
  }
}
