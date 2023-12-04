import 'package:flutter/material.dart';

class appbar_1 extends StatelessWidget {
  const appbar_1({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Text(
        'Progress report',
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
    );
  }
}

AppBar appbar() {
  return AppBar(
    //TODO add forceMaterialTransparency: true, to all the app bars
    forceMaterialTransparency: true,
    elevation: 0,
    title: const Text(
      'Progress report',
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
  );
}
