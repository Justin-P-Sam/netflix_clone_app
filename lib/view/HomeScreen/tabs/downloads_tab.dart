// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone_app/view/profile_screen/profile_screen.dart';

class DownloadsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text(
            'My Downloads',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Icon(Icons.cast, color: Colors.white),
            SizedBox(width: 16),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'), // Replace with a real image asset
                radius: 15,
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Smart Downloads Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.info_outline, color: Colors.white),
                      SizedBox(width: 8),
                      RichText(
                        text: TextSpan(
                          text: 'Smart Downloads ',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'ON',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.edit, color: Colors.white),
                ],
              ),
              SizedBox(height: 24),

              // User Section
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), // Replace with a real image asset
                    radius: 25,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Justin',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Downloaded Content
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    // Thumbnail
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/736x/53/7a/15/537a154075ab96a20f8704f693616be2.jpg"), // Replace with real image
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    // Content Info
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Stranger Things',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'TV-MA | 8 Episodes | 211.6 MB',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Arrow Icon
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    // Thumbnail
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/736x/1e/5f/bf/1e5fbfff9b57c2d5b5dc73f18f703c2d.jpg"), // Replace with real image
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    // Content Info
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Game of Thrones',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'TV-MA | 10 Episodes | 211.6 MB',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Arrow Icon
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Downloaded Content
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(children: [
                    // Thumbnail
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/736x/91/aa/3f/91aa3f4a4bd6bd75369bbab4d6f7e217.jpg"), // Replace with real image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Content Info
                  ]))
            ])));
  }
}

































// // ignore_for_file: prefer_const_constructors, use_build_context_synchronously

// import 'package:flutter/material.dart';

// import 'package:netflix_clone_app/view/login_screen/login_screen.dart';

// import 'package:shared_preferences/shared_preferences.dart';


// class DownloadsTab extends StatefulWidget {
//   const DownloadsTab({super.key});

//   @override
//   State<DownloadsTab> createState() => _BottomNavbarScreenState();
// }

// class _BottomNavbarScreenState extends State<DownloadsTab> {
//     int selectindex=0;

//   @override
//   Widget build(BuildContext context) {
    
//      return Scaffold(
      
//      appBar: AppBar(title: Text("home screen"),),
//      body:  Column(
//        children: [
//        // Text("$saved")
//         ElevatedButton(
//           style:  ElevatedButton.styleFrom(
//             backgroundColor:Colors.black
//                       ),
//                   onPressed: () async { 
//                     SharedPreferences prefs=await SharedPreferences.getInstance();
//                     await prefs.remove('username');
//                     await prefs.remove('password');
//                    Navigator.pushReplacement( 
//                       context,
//                       MaterialPageRoute(
//                         builder:  (context) => LoginScreen(),)
//                        );
//                 },
//                  child: Text("Logout")),
//        ],
//      ),
//     );
//   }
// }