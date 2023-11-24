import 'package:flutter/material.dart';

Container drawerheading() {
  return Container(
    color: const Color.fromRGBO(6, 11, 29, 1),
    padding: const EdgeInsets.only(top: 65, bottom: 35, left: 20),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: Transform.scale(
            scale: 1.2,
            child: Image.asset(
              'assets/images/icons/Drawer_logo.png',
            ),
          ),
        ),
        const Text(
          'LeapSkooL',
          style: TextStyle(
            color: Color.fromRGBO(105, 86, 229, 1),
            fontSize: 29,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
