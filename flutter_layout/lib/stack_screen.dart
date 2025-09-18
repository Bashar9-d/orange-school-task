import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Screen"),
        backgroundColor: Colors.redAccent,
      ),
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            width: 500,
            height: 500,
            //color: Colors.blueAccent,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(width: 2)
            ),
          ),
          Container(
            width: 300,
            height: 300,
            //color: Colors.blueAccent,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(width: 2)
            ),
          ),
          Container(
            width: 100,
            height: 100,
            //color: Colors.blueAccent,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(width: 2)
            ),
          ),
        ],
      ),
    );
  }
}
