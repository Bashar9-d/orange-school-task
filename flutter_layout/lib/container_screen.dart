import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container"), backgroundColor: Colors.purple),
      body: Container(
        width: 100,
        height: 100,
        //color: Colors.blueAccent,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20),
        alignment: Alignment.bottomRight,
        decoration: BoxDecoration(
            color: Colors.blueAccent,
          border: Border.all(width: 2)
        ),
        child: Text("Abdallah"),
      ),
    );
  }
}
