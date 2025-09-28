import 'package:flutter/material.dart';
import 'WhatsAppUI.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  bool showErrorEmail = false;
  bool showErrorPassword = false; 
  String? confirmError;

  bool obscurePassword = true;
  bool obscureConfirm = true;

  bool isEmail(String em) {
    const String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    return RegExp(p).hasMatch(em.trim());
  }

  bool isValidPassword(String pass) {
 
    return pass.length >= 6;
  }

  void validateAndSubmit() async {

    showErrorEmail = !isEmail(emailController.text);
    showErrorPassword = !isValidPassword(passwordController.text);
    
    confirmError = null;

    setState(() {});

    final noErrors = !showErrorEmail && !showErrorPassword && confirmError == null;

    if (noErrors) {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('email', emailController.text.trim());
      prefs.setString('password', passwordController.text);
      prefs.setString('name', nameController.text);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WhatsAppUI(),
        ),
      );
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register"), backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: nameController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Enter your name (optional)",
                  label: const Text("Name"),
                  suffixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 10),

              // EMAIL
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                onChanged: (_) => setState(() {
                  showErrorEmail = emailController.text.isEmpty
                      ? false
                      : !isEmail(emailController.text);
                }),
                decoration: InputDecoration(
                  hintText: "Enter your email (example@gmail.com)",
                  label: const Text("Email"),
                  errorText: showErrorEmail ? "Invalid email" : null,
                  suffixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 10),
              
              TextField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscurePassword,
                textInputAction: TextInputAction.next,
                onChanged: (_) => setState(() {
                  showErrorPassword = passwordController.text.isEmpty
                      ? false
                      : !isValidPassword(passwordController.text);
                }),
                decoration: InputDecoration(
                  hintText: "Enter your password (min 6 chars)",
                  label: const Text("Password"),
                  errorText: showErrorPassword ? "Invalid password" : null,
                  suffixIcon: IconButton(
                    onPressed: () => setState(() => obscurePassword = !obscurePassword),
                    icon: Icon(obscurePassword ? Icons.visibility : Icons.visibility_off),
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
   
              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: validateAndSubmit,
                  child: const Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
