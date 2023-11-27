import 'package:flutter/material.dart';
import 'package:student/appbar_global/drawer_list.dart';
import 'package:student/appbar_global/header_drawer.dart';

Drawer drawer() {
  return Drawer(
    backgroundColor: const Color.fromRGBO(1, 1, 20, 1),
    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: drawerheading(),
          ),
          Expanded(
            flex: 5,
            child: DrawerList(),
          ),
          Flexible(
            flex: 4,
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: IconButton(
                  onPressed: () {
                    // TODO: Go to trouble shoot page
                  },
                  splashRadius: 150,
                  splashColor: const Color.fromRGBO(105, 86, 229, 0.1),
                  icon: Transform.scale(
                    scale: 1,
                    child: Image.asset(
                      'assets/images/icons/troubleshoot.png',
                      colorBlendMode: BlendMode.lighten,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
