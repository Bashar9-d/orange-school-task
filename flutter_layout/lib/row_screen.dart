import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//x axis
        crossAxisAlignment: CrossAxisAlignment.center,//y axis
        children: [
          Text("Abdallah"),
          Icon(Icons.ac_unit_outlined),
          Text("asdfsdfsdfsfsdfgggggggggggggggggggggggd"),
        ],
      ),
    );
    ;
  }
}
