import 'package:flutter/material.dart';

//! button1
class Button1 extends StatelessWidget {
  final String txt;
  const Button1({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 250,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(136, 136, 255, 1),
        borderRadius: BorderRadius.circular(66),
      ),
      child: Center(
        child: Text(
          txt,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.5,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

//! button2
class Button2 extends StatelessWidget {
  final String yesorno;
  final Color color;
  const Button2({
    super.key,
    required this.yesorno,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 35,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(66),
      ),
      child: Center(
        child: Text(
          yesorno,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

//! button3
class Button3 extends StatelessWidget {
  final String whichUnit;
  const Button3({
    super.key,
    required this.whichUnit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(136, 136, 255, 1),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: Text(
          whichUnit,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
