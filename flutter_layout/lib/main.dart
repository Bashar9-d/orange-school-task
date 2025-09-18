import 'package:flutter/material.dart';
import 'package:flutter_layout/center_screen.dart';
import 'package:flutter_layout/column_screen.dart';
import 'package:flutter_layout/container_screen.dart';
import 'package:flutter_layout/row_screen.dart';
import 'package:flutter_layout/size_box_screen.dart';
import 'package:flutter_layout/stack_screen.dart';

void main() {
  runApp(const MyApp());
}

//Row, Column,Center,Container,Stack,SizeBox
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StackScreen());
  }
}
