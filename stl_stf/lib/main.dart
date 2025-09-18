import 'package:flutter/material.dart';
import 'package:stl_stf/home_screen.dart';
import 'package:stl_stf/home_screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenTwo(),
    );
  }
}

