// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/image_constants.dart';
import 'package:netflix_clone_app/view/dummy_db.dart';
import 'package:netflix_clone_app/view/video_player_screen/video_player_screen.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading:CircleAvatar(
            backgroundColor: Colors.black,
            radius: 40,
            backgroundImage: AssetImage(ImageConstants.MyAppLogo2),
          ),
          actions: const [
            Icon(Icons.cast, color: Colors.white),
            SizedBox(width: 10),
            Icon(Icons.notifications, color: Colors.white),
            SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // Main Text Widget

                  // Positioned Image
                  Container(
                    height: 500,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstants
                            .MOVIES1), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 78,
                    child: const Text(
                      'Exciting.Reality TV . Competion',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                      left: 59,
                      bottom: 20,
                      child: Row(children: [
                        Column(
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text(
                              "MY List",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 62,
                        ),
                        Container(
                            height: 40,
                            width: 90,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.play_arrow, color: Colors.black),
                                Text(
                                  "Play",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            )),
                        SizedBox(width: 62),
                        Column(
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                            Text(
                              "Info",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ]))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text(
                  "Continue Watching for Justin",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    DummyDb.featuredItemsList.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                height: 180,
                                width: 150,
                                child: Image.network(
                                  DummyDb.featuredItemsList[index]["imageUrl"],
                                  //  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 0,
                                bottom: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              VideoPlayerScreen()),
                                    );
                                  },
                                  child: Icon(
                                    Icons.play_circle_outline_outlined,
                                    color: Colors.white,
                                    size: 80,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    DummyDb.featuredItemsList.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                height: 180,
                                width: 150,
                                child: Image.network(
                                  DummyDb.featuredItemsList[index]["imageUrl"],
                                  //  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                top: 0,
                                bottom: 0,
                                child: Icon(
                                  Icons.play_circle_outline_outlined,
                                  color: Colors.white,
                                  size: 80,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    DummyDb.featuredItemsList.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                height: 180,
                                width: 150,
                                child: Image.network(
                                  DummyDb.featuredItemsList[index]["imageUrl"],
                                  //  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                top: 0,
                                bottom: 0,
                                child: Icon(
                                  Icons.play_circle_outline_outlined,
                                  color: Colors.white,
                                  size: 80,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
