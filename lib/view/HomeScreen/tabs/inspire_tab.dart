// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/color_constants.dart';

class InspireTab extends StatefulWidget {
  @override
  _InspireScreenState createState() => _InspireScreenState();
}

class _InspireScreenState extends State<InspireTab> {
  double runtime = 0; // For slider value
  String selectedCategory = "Movie"; // Default selected category
  String selectedRating = "U"; // Default selected rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Inspire",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category Tabs
            const Text(
              "What are you looking for?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                _buildCategoryButton("Movie"),
                _buildCategoryButton("Series"),
                _buildCategoryButton("Documentary"),
              ],
            ),
            SizedBox(height: 16),
            // Genre Selection
            const Text(
              "All Genres",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Genres",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 16),
              ],
            ),
            SizedBox(height: 16),
            // Runtime Slider
            const Text(
              "Runtime",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SliderTheme(
              data: SliderThemeData(
                thumbColor: Colors.white,
                activeTrackColor: Colors.white,
                inactiveTrackColor: Colors.white24,
              ),
              child: Slider(
                value: runtime,
                max: 130,
                onChanged: (value) {
                  setState(() {
                    runtime = value;
                  });
                },
              ),
            ),
            Text(
              "0 - ${runtime.toInt()} mins",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            SizedBox(height: 16),
            // Rating
            const Text(
              "Rating",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: ["U", "PG", "12", "15", "18"]
                  .map((rating) => _buildRatingButton(rating))
                  .toList(),
            ),
            Spacer(),
            // Get Inspired Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.UICOLOR,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  "Get inspired",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String category) {
    bool isSelected = selectedCategory == category;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = category;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: isSelected ? Colors.red : Colors.grey[900],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              category,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.white70,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRatingButton(String rating) {
    bool isSelected = selectedRating == rating;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedRating = rating;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.red : Colors.grey[900],
        ),
        child: Text(
          rating,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white70,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
