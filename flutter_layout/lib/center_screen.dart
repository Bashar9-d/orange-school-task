import 'package:flutter/material.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Center Screen"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        color: Colors.grey,
        width: 200,
        height: 200,
        child: Center(
          child: Text("Omar"),
        ),
      ),
    );
  }
}
