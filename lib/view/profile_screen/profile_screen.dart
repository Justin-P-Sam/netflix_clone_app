// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:netflix_clone_app/view/login_screen/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'), // Replace with your asset
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Justin',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Switch',
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                  ),
                ],
              ),
              Icon(Icons.search, color: Colors.white),
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 16),
              // Settings options
              SettingsOption(title: 'App Settings'),
              SettingsOption(title: 'Account'),
              SettingsOption(title: 'Privacy'),
              SettingsOption(title: 'Cookie Preferences'),
              SettingsOption(title: 'Call Help Centre'),
              Spacer(),
              // Sign Out Button
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 450),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                    ),
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.remove('username');
                      await prefs.remove('password');
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Sign Out',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.exit_to_app, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ),
            ])));
  }
}

class SettingsOption extends StatelessWidget {
  final String title;

  SettingsOption({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Icon(Icons.open_in_new, color: Colors.grey),
        ],
      ),
    );
  }
}
