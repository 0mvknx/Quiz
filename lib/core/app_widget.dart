import 'package:flutter/material.dart';
import 'package:quiz/home/home_page.dart';
import 'package:quiz/splash/splash.page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}
