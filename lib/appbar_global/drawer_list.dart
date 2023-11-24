import 'package:flutter/material.dart';

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
          // TODO: Home Button
          TextButton(
            onPressed: () {
              // TODO: Go to Homepage
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
          //TODO: Performance button
          TextButton(
            onPressed: () {
              // TODO: Go to performmance page
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
          //TODO: Attendence button
          TextButton(
            onPressed: () {
              // TODO: Go to attendence page
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
          //TODO: Question bank button
          TextButton(
            onPressed: () {
              // TODO: Go to question_Bank page
            },
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
          //TODO: Syllabus button
          TextButton(
            onPressed: () {
              // TODO: Go to Syllabus page
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
          //TODO: Time table button
          TextButton(
            onPressed: () {
              // TODO: Go to Time_table page
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
