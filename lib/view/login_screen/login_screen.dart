// ignore_for_file: prefer_const_constructors, unused_import, use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:netflix_clone_app/view/HomeScreen/home_screen.dart';
import 'package:netflix_clone_app/view/HomeScreen/tabs/home_tab.dart';
import 'package:netflix_clone_app/view/global_widget/custom_button.dart';

import 'package:shared_preferences/shared_preferences.dart';

final emailController = TextEditingController();
final pwdController = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    checkSavedCredentials(); // Check for saved credentials on app startup
  }

  // Check if credentials are already saved
  void checkSavedCredentials() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedUsername = prefs.getString('username');
    String? savedPassword = prefs.getString('password');

    if (savedUsername != null && savedPassword != null) {
      log("Auto-login with saved credentials: $savedUsername");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

  // Login Function
  void login() async {
    String username = emailController.text;
    String password = pwdController.text;

    if (username.isNotEmpty && password.isNotEmpty) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('username', username);
      await prefs.setString('password', password);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      AlertDialog(
        actions: const [Text("Error: Please enter email and password!")],
      );
      log("Error: Please enter email and password!");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter email and password!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Sign in to Your Account",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              SizedBox(height: 30),
              TextField(
                style: TextStyle(color: Colors.white),
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Your Email Address',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'abc123@gmail.com',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              TextField(
                style: TextStyle(color: Colors.white),
                controller: pwdController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Your Password",
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: "1wet678@#",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              SizedBox(height: 40),
              CustomButton(
                buttonText: "Sign in",
                onButtonPressed: () {
                  log("Login button clicked");
                  login();
                },
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the register screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
