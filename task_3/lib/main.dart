import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';
import 'login_screen.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  bool ?cd;
  checkData() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString('email') != null) {
      cd = true;
    }
    else {
      cd=false;
    }
    setState(() {});
  }
  @override
  initState(){
    super.initState();
    checkData();
  }
  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cd == true
          ? WhatsAppUI()
          : LoginScreen(),
    );
  }
}
