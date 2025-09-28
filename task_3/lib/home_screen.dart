import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_screen.dart';

class WhatsAppUI extends StatefulWidget {
  const WhatsAppUI({super.key});

  @override
  State<WhatsAppUI> createState() => _WhatsAppUIState();
}

class _WhatsAppUIState extends State<WhatsAppUI> {
  String? name;
  String? email;

  getData() async {
    final prefs = await SharedPreferences.getInstance();
    name = prefs.getString('name')??"";
    email = prefs.getString('email')??"";
    setState(() {});
  }

  @override
  initState() {
    super.initState();
    getData();
  }

  int currentIndex = 0;

  final List<Widget> screens = [ChatsScreen(), StatusScreen(), CallsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        backgroundColor: Colors.teal[800],
      ),
      body: screens[currentIndex],
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(name!),
              accountEmail: Text(email!),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(Icons.person, color: Colors.white, size: 30),
              ),
              decoration: BoxDecoration(color: Colors.teal[800]),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.more),
                    title: Text("More"),
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text("تسجيل خروج", style: TextStyle(color: Colors.red)),
              onTap: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.remove('email');
                  prefs.remove('password');
                  prefs.remove('name');
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );

              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.teal[800],
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: "Status"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
    );
  }
}

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

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Status Screen"));
  }
}

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Calls Screen"));
  }
}
