import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  String password;
  String email;

   HomeScreen({required this.email,required this.password,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Email: $email"),
          Text("Password: $password"),
        ],
      ),
    );
  }
}
