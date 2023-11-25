import 'dart:ffi';

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

//!button4
class Button4 extends StatelessWidget {
  final String whichUnit;
  final Color buttonColor;
  final Color textColor;
  const Button4({
    super.key,
    required this.whichUnit,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: Text(
          whichUnit,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}

//!button5
class Button5 extends StatelessWidget {
  final String txt;
  final double height;
  final double width;
  final Color buttonColor;
  final Color textColor;
  const Button5({
    super.key,
    required this.txt,
    required this.height,
    required this.width,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(66),
      ),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.5,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
