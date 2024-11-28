// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix_clone_app/view/dummy_db.dart';
import 'package:netflix_clone_app/view/global_widget/custom_inputfield.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  CustomInputField(
                    hintTex: "search",
                    prefixIcon: Icons.search,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: List.generate(
                        DummyDb1.searchtabItemList.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 230),
                                    child: Container(
                                      height: 80,
                                      width: 150,
                                      child: Image.network(
                                        DummyDb1.searchtabItemList[index]
                                            ["imageUrl"],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 100,
                                    bottom: 0,
                                    top: 30,
                                    child: Text(
                                      "Peaky Blinders",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    top: 0,
                                    child: Icon(
                                      Icons.play_circle_outline_outlined,
                                      color: Colors.white,
                                      size: 40,
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
            ),
          )),
    );
  }
}
