import 'package:flutter/material.dart';
import 'package:foodybite/screens/main_screen.dart';
import 'package:foodybite/util/const.dart';
import 'package:get/get.dart';


void main() async {
  runApp(MyApp()
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      home: MainScreen(),
    );
  }
}
