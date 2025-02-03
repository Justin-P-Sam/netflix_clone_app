// ignore_for_file: prefer_const_constructors, dead_code, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/color_constants.dart';
import 'package:netflix_clone_app/view/HomeScreen/tabs/downloads_tab.dart';

import 'package:netflix_clone_app/view/HomeScreen/tabs/home_tab.dart';

import 'package:netflix_clone_app/view/HomeScreen/tabs/search_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   leading: const Icon(Icons.menu, color: Colors.white),
        //   title: const Text('Netflix', style: TextStyle(color: Colors.red)),
        //   actions: const [
        //     Icon(Icons.cast, color: Colors.white),
        //     SizedBox(width: 10),
        //     Icon(Icons.notifications, color: Colors.white),
        //     SizedBox(width: 10),
        //   ],
        // ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  HomeTab(),
                  
                  SearchTab(),
                  DownloadsTab(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          color: ColorConstants.PRIMARYCOLOR,
          child: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              
              Tab(icon: Icon(Icons.search), text: 'Search'),
              Tab(icon: Icon(Icons.download), text: 'Downloads'),
            ],
          ),
        ),
      ),
    );
  }
}
