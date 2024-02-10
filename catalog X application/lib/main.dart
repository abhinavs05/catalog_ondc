import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_app/COSNT/const.dart';
import 'package:my_app/SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        scaffoldBackgroundColor:  Color.fromARGB(255, 17, 66, 149),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blueAccent),
        fontFamily: regular,
      ),
      home: const splashScreen(),
    );
  }
}