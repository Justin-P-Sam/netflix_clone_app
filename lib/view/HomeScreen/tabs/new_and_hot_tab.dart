// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class NewAndHotTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New & Hot',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications, color: Colors.white),
                      SizedBox(width: 16),
                      Icon(Icons.cast, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            // Filters
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Chip(
                    label: Text(
                      'Coming Soon',
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.orange,
                  ),
                  SizedBox(width: 8),
                  Chip(
                    label: Text(
                      "Everyone's Watching",
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(width: 8),
                  Chip(
                    label: Text(
                      'Games',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.grey[800],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // ListView for items
            Expanded(
              child: ListView(
                children: [
                  NewAndHotItem(
                    date: 'Jan 01',
                    title: 'Lorem Ipsum',
                    description:
                        'Pt. 1 Coming January 1; Pt. 2 Coming January 1\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    genres: 'Sci-fi  Psychological  Thriller  Fantasy',
                  ),
                  SizedBox(height: 16),
                  NewAndHotItem(
                    date: 'Jan 01',
                    title: 'Lorem Ipsum',
                    description: 'Another sample description',
                    genres: 'Drama  Adventure  Action',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewAndHotItem extends StatelessWidget {
  final String date;
  final String title;
  final String description;
  final String genres;

  const NewAndHotItem({
    required this.date,
    required this.title,
    required this.description,
    required this.genres,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            date,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 8),
        Stack(
          children: [
            Container(
              height: 200,
              color: Colors.grey[800],
              child: Center(
                child: Icon(Icons.play_circle_outline,
                    color: Colors.white, size: 50),
              ),
            ),
            Positioned(
              left: 16,
              bottom: 16,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            description,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            genres,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
