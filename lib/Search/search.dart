import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotifyui/widget/uihelper.dart';

class SearchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 70,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18, // Smaller radius
              backgroundColor: Colors.brown,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/sletter.png',
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Search',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt_outlined),
            onPressed: () {
              // Your onPressed logic here
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "What do you want to listen to?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Start browsing',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
          )

        ],
      ),

    );
  }

}