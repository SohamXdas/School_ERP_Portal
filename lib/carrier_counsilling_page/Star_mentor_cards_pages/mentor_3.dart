import 'package:flutter/material.dart';
import 'package:student/Global_widgets/buttons.dart';
import 'package:student/limitted_access/limitted_access_page.dart';

class Mentor3 extends StatelessWidget {
  const Mentor3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Card(
        elevation: 0,
        color: const Color.fromRGBO(6, 11, 29, 1),
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Tanvi Verma',
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 20),
              child: Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      SizedBox(
                        height: 110,
                        width: 115,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(9),
                          child: Image.asset(
                            'assets/images/icons/councl_3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.play_circle_outline_rounded,
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                        size: 20,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  const Text(
                    '93.86 percentile\nin Jee Mains\nNSUT (2017)\nB-Tech in ECE',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              splashColor: const Color.fromARGB(204, 189, 189, 255),
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const LimitedAccessPage();
                    },
                  ),
                );
              },
              child: const Button5(
                txt: 'Book a Meeting',
                height: 48,
                width: 175,
                buttonColor: Color.fromRGBO(240, 238, 255, 1),
                textColor: Color.fromRGBO(6, 11, 29, 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
