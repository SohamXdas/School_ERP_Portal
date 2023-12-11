import 'package:flutter/material.dart';

AppBar appbar() {
  return AppBar(
    forceMaterialTransparency: true,
    elevation: 0,
    title: const Text(
      'Home Page',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
    ),
    actions: [
      IconButton(
        onPressed: () {
          // Go to notification page
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
  );
}
