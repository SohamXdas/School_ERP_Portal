import 'package:flutter/material.dart';
import 'package:student/Global_widgets/buttons.dart';
import 'package:student/Global_widgets/graphs/attencence_graph.dart';
import 'package:student/appbar_global/drawer.dart';

class AttendencePage extends StatelessWidget {
  const AttendencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 11, 29, 1),
      endDrawer: drawer(),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Attendence report',
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
            padding: const EdgeInsets.only(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('data'),
                const Text('data'),
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
                              child: attendenceGraph(),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //TODO set go to's
                    InkWell(
                      splashColor: Colors.white38,
                      radius: 90,
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {},
                      child: const Button3(
                        whichUnit: '1M',
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.white38,
                      radius: 90,
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {},
                      child: const Button3(
                        whichUnit: '3M',
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.white38,
                      radius: 90,
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {},
                      child: const Button3(
                        whichUnit: '6M',
                      ),
                    ),
                  ],
                ),
                const Center(
                  child: Button1(txt: 'Click for detailed Report'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// Card(
//                      