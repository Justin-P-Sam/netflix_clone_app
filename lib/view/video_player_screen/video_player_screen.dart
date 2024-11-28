// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/image_constants.dart';
import 'package:netflix_clone_app/view/HomeScreen/tabs/home_tab.dart';

class VideoPlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeTab()),
                );
              },
              child: Icon(Icons.arrow_back, color: Colors.white)),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.cast, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // Main Text Widget

                // Positioned Image
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstants
                          .MOVIES2), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                    left: 80,
                    bottom: 50,
                    child: Row(children: [
                      SizedBox(
                        width: 62,
                      ),
                      Column(
                        children: [],
                      ),
                      Icon(Icons.play_circle_outline_outlined,
                          size: 100, color: Colors.white),
                    ]))
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Oppenheimer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  "91% match",
                  style: TextStyle(color: Colors.green, fontSize: 14),
                ),
                SizedBox(width: 8),
                Text(
                  "2023",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Text(
                    "18+",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "3h 01m",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(width: 8),
                Text(
                  "HD",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow, color: Colors.black),
                  SizedBox(width: 8),
                  Text(
                    "Play",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.download, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    "Download",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "The contents of a hidden grave draw the interest of an industrial titan and send officer K, an LAPD blade runner, on a quest to find a missing legend.",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              "Cast: Ryan Gosling, Harrison Ford, Ana de Armas ... more",
              style: TextStyle(color: Colors.white60, fontSize: 12),
            ),
            SizedBox(height: 4),
            Text(
              "Director: Denis Villeneuve",
              style: TextStyle(color: Colors.white60, fontSize: 12),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.add, color: Colors.white),
                    SizedBox(height: 4),
                    Text(
                      "My List",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.thumb_up_alt_outlined, color: Colors.white),
                    SizedBox(height: 4),
                    Text(
                      "Rate",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, color: Colors.white),
                    SizedBox(height: 4),
                    Text(
                      "Share",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

// import 'package:flutter/material.dart';

// class VideoPlayerScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Column(
//               children: [
//                 // Top Bar with Episode Name and Close Button
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Icon(Icons.cast, color: Colors.white),
//                       Text(
//                         "S0:E0 \"Episode Name\"",
//                         style: TextStyle(color: Colors.white, fontSize: 16),
//                       ),
//                       Icon(Icons.close, color: Colors.white),
//                     ],
//                   ),
//                 ),
//                 Spacer(),
//                 // Player Controls
//                 Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         IconButton(
//                           iconSize: 40,
//                           icon: Icon(Icons.replay_10, color: Colors.white),
//                           onPressed: () {
//                             // Rewind action
//                           },
//                         ),
//                         SizedBox(width: 20),
//                         IconButton(
//                           iconSize: 50,
//                           icon: Icon(Icons.pause, color: Colors.white),
//                           onPressed: () {
//                             // Play/Pause action
//                           },
//                         ),
//                         SizedBox(width: 20),
//                         IconButton(
//                           iconSize: 40,
//                           icon: Icon(Icons.forward_10, color: Colors.white),
//                           onPressed: () {
//                             // Forward action
//                           },
//                         ),
//                       ],
//                     ),
//                     // Progress Slider
//                     SliderTheme(
//                       data: SliderTheme.of(context).copyWith(
//                         activeTrackColor: Colors.red,
//                         inactiveTrackColor: Colors.grey,
//                         thumbColor: Colors.red,
//                         trackHeight: 2,
//                         thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
//                       ),
//                       child: Slider(
//                         value: 0.2, // Example value
//                         onChanged: (value) {
//                           // Update slider position
//                         },
//                       ),
//                     ),
//                     // Time Labels (Progress and Total)
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "0:00",
//                             style: TextStyle(color: Colors.white, fontSize: 12),
//                           ),
//                           Text(
//                             "10:00",
//                             style: TextStyle(color: Colors.white, fontSize: 12),
//                           ),
//                         ],
//                       ),
//                     ),
//                     // Bottom Options Row
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 16.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Column(
//                             children: [
//                               Icon(Icons.speed, color: Colors.white),
//                               Text(
//                                 "Speed (1x)",
//                                 style: TextStyle(color: Colors.white, fontSize: 12),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Icon(Icons.lock, color: Colors.white),
//                               Text(
//                                 "Lock",
//                                 style: TextStyle(color: Colors.white, fontSize: 12),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Icon(Icons.subtitles, color: Colors.white),
//                               Text(
//                                 "Audio & Subtitles",
//                                 style: TextStyle(color: Colors.white, fontSize: 12),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
