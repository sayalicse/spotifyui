import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100, // Adjust height to fit two rows
        backgroundColor: Colors.black,
        elevation: 0,
        titleSpacing: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row → Avatar + Title + Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Avatar + Title in one Row
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.brown,
                          backgroundImage: AssetImage('assets/images/slett.png'),
                        ),
                      ),
                      Text(
                        "Your Library",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                // Action Buttons (Search + Add)
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 8),

            // Second Row → Playlists & Artists buttons
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  // Playlists button
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Playlists",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  SizedBox(width: 10),

                  // Artists button
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Artists",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_downward_sharp,size: 20,),
                  Icon(Icons.arrow_upward_sharp,size: 20,),
                  SizedBox(width: 5,),
                  Text('Recents',style: TextStyle(color: Colors.white,fontSize: 15),),
                  Spacer(),
                  Icon(Icons.widgets_outlined,size: 20,color: Colors.white,)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  LikedSongsBox(),
                  SizedBox(
                    width: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Liked Songs',style: TextStyle(color: Colors.white,fontSize: 15),),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.push_pin,   // Pin icon
                              color: Colors.green, // Green color
                              size: 18,         // Adjust size
                            ),
                            Text('Playlist . 2 songs',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                            ),)

                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                   backgroundImage: AssetImage('assets/images/sonunigam.jpg'),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start, // 👈 Add this line
                    children: [
                      Text(
                        'Sonu Nigam',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        'Artist',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/armanmalik.jpg'),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start, // 👈 Add this line
                    children: [
                      Text(
                        'Armaan Malik',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        'Artist',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  )

                ],
              ),
              SizedBox(
                height: 10,
              ),
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey[800], // You can change the color
              child: Icon(
                Icons.add,
                color: Colors.grey, // Icon color
                size: 30, // Icon size
              ),
            ),
            SizedBox(width: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add artists',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                // Text(
                //   'Artist',
                //   style: TextStyle(color: Colors.grey, fontSize: 8),
                // ),
              ],
            )
          ],
        ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[800], // Background color
                  borderRadius: BorderRadius.circular(4), // Optional: rounded corners
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,           // Plus icon
                    color: Colors.grey,  // Icon color
                    size: 28,            // Icon size
                  ),
                ),
              ),

          SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add podcasts',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      // Text(
                      //   'Artist',
                      //   style: TextStyle(color: Colors.grey, fontSize: 8),
                      // ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[800], // Background color
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Image.asset(
                    "assets/images/downarrow.png", // Your image path
                    color: Colors.grey,          // Make the image grey
                    height: 40,                  // Adjust image size
                    width: 40,
                  ),
                ),
              ),


          SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Import your music',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      // Text(
                      //   'Artist',
                      //   style: TextStyle(color: Colors.grey, fontSize: 8),
                      // ),
                    ],
                  )
                ],
              ),


            ],
          ),
        ),
      ),



    );



  }

}


class LikedSongsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, // Square size
      width: 70,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(6),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF7F00FF), // Purple
            Colors.green, // Light blue
          ],
        ),
      ),
      child: Center(
        child: Icon(
          Icons.favorite, // Heart Icon
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
