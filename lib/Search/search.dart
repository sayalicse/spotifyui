import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.brown,
            child: ClipOval(
              child: Image.asset(
                'assets/images/slett.png',
                fit: BoxFit.cover,
                width: 36,
                height: 36,
              ),
            ),
          ),
        ),
        title: Text("Search",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {
              // Handle camera icon press
            },
          ),
        ],
      ),

        body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 10),
            Container(
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
            SizedBox(height: 10),
            Text(
              'Start browsing',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
