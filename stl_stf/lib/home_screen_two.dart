import 'package:flutter/material.dart';

class HomeScreenTwo extends StatefulWidget {
  @override
  State<HomeScreenTwo> createState() {
    return HomeScreenTwoState();
  }
}

class HomeScreenTwoState extends State<HomeScreenTwo> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(child: Text(i.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          i++;
          setState(() {});
          print(i);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
