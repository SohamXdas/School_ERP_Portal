import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/appbar_global/drawer.dart';

//! TODO add this page navigation to all the appbars (Fuckinggg hellll!!)
class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 11, 29, 1),
      endDrawer: drawer(),
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          'Notifications',
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
          const SizedBox(
            height: 180,
          ),
          SizedBox(
            height: 270,
            width: 200,
            child: SvgPicture.asset('assets/images/icons/no_notifications.svg'),
          ),
          const Text(
            'You have no\nNew Notifications!!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
