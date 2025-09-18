import 'package:flutter/material.dart';

class ColumnScreen extends StatefulWidget {
  const ColumnScreen({super.key});

  @override
  State<ColumnScreen> createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //y axis
        crossAxisAlignment: CrossAxisAlignment.start, //x axis
        children: [
          TextButton(onPressed: () {}, child: Text("data")),
          Text("Abdallah"),
          Icon(Icons.ac_unit_outlined),
          Text("asdfsdfsdfsfsdfgggggggggggggggggggggggd"),
        ],
      ),
    );
  }
}
