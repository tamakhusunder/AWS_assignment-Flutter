import 'package:flutter/material.dart';
import 'package:project1/screen/homepage.dart';
import 'package:project1/screen/detailpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/details": (context) => Detailpage()},
      debugShowCheckedModeBanner: false,
      title: "Facebook page assignment",
      home: Homepage(),
    );
  }
}
