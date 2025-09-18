import 'package:flutter/material.dart';

class SizeBoxScreen extends StatelessWidget {
  const SizeBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SizedBox(
        child: Text("data"),
        width: 100,
        height: 100,
      ),
    );
  }
}
