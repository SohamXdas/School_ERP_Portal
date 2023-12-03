import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:student/Global_widgets/buttons.dart';
import 'package:student/Global_widgets/graphs/performance_graphs.dart';
import 'package:student/appbar_global/drawer.dart';
import 'package:student/carrier_counsilling_page/Star_mentor_cards_pages/mentor_1.dart';
import 'package:student/carrier_counsilling_page/Star_mentor_cards_pages/mentor_2.dart';
import 'package:student/carrier_counsilling_page/Star_mentor_cards_pages/mentor_3.dart';
import 'package:student/carrier_counsilling_page/Star_mentor_cards_pages/mentor_4.dart';
import 'package:student/carrier_counsilling_page/Star_mentor_cards_pages/mentor_5.dart';

class CarrierCounsilling extends StatelessWidget {
  CarrierCounsilling({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 11, 29, 1),
      endDrawer: drawer(),
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          'Career Counselor',
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
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Star Mentors',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
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
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Center(
                          child: SizedBox(
                            height: 290,
                            width: 300,
                            child: PageView(
                              controller: _controller,
                              children: const [
                                Mentor1(),
                                Mentor5(),
                                Mentor4(),
                                Mentor2(),
                                Mentor3(),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: SmoothPageIndicator(
                            controller: _controller,
                            count: 5,
                            effect: const JumpingDotEffect(
                              dotHeight: 10,
                              dotWidth: 15,
                              dotColor: Color.fromRGBO(240, 238, 255, 1),
                              verticalOffset: 4.5,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Search by field',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                //! Names
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        InkWell(
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
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
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
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        InkWell(
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
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
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
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        InkWell(
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
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
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
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
