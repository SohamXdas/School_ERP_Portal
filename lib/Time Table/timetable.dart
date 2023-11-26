import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/Global_widgets/buttons.dart';
import 'package:student/appbar_global/drawer.dart';
import 'package:student/appbar_global/appbar.dart';
import 'package:student/Global_widgets/graphs/performance_graphs.dart';
import 'package:student/Global_widgets/graphs/syllabus_graph.dart';

class Timetable extends StatelessWidget {
  const Timetable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 11, 29, 1),
      endDrawer: drawer(),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Time Table',
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
            padding: const EdgeInsets.only(top: 25),
            child: SvgPicture.asset('assets/images/icons/time_table.svg'),
          ),
          const Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    child: Button4(
                      whichUnit: 'Mon',
                      height: 60,
                      width: 60,
                      buttonColor: Color.fromRGBO(231, 243, 255, 1),
                      textColor: Color.fromRGBO(6, 11, 29, 1),
                    ),
                  ),
                  SizedBox(
                    child: Button4(
                      whichUnit: 'Tue',
                      height: 60,
                      width: 60,
                      buttonColor: Color.fromRGBO(231, 243, 255, 1),
                      textColor: Color.fromRGBO(6, 11, 29, 1),
                    ),
                  ),
                  SizedBox(
                    child: Button4(
                      whichUnit: 'Wed',
                      height: 60,
                      width: 60,
                      buttonColor: Color.fromRGBO(231, 243, 255, 1),
                      textColor: Color.fromRGBO(6, 11, 29, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    child: Button4(
                      whichUnit: 'Thu',
                      height: 60,
                      width: 60,
                      buttonColor: Color.fromRGBO(231, 243, 255, 1),
                      textColor: Color.fromRGBO(6, 11, 29, 1),
                    ),
                  ),
                  SizedBox(
                    child: Button4(
                      whichUnit: 'Fri',
                      height: 60,
                      width: 60,
                      buttonColor: Color.fromRGBO(231, 243, 255, 1),
                      textColor: Color.fromRGBO(6, 11, 29, 1),
                    ),
                  ),
                  SizedBox(
                    child: Button4(
                      whichUnit: 'Sat',
                      height: 60,
                      width: 60,
                      buttonColor: Color.fromRGBO(231, 243, 255, 1),
                      textColor: Color.fromRGBO(6, 11, 29, 1),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
