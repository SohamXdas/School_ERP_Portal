import 'package:flutter/material.dart';
import 'package:student/Home%20page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(6, 11, 29, 1),
        ),
      ),
      home: const Homepage(),
    );
  }
}
