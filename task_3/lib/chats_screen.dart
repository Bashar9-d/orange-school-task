import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  final List<Map<String, String>> chats = List.generate(
    20,
        (index) => {
      "name": "Contact $index",
      "message": "رسالة تجريبية رقم $index",
      "time": "${index + 1}:00 PM",
    },
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.teal[300],
            child: Text(chats[index]["name"]![0]),
          ),
          title: Text(chats[index]["name"]!),
          subtitle: Text(chats[index]["message"]!),
          trailing: Text(chats[index]["time"]!),
        );
      },
    );
  }
}