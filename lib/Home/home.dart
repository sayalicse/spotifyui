import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              radius: 17, // makes it 30x30
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMg1w6m19JxLpqvM6404OIeFiFc4vj2lqAvw&s',
              ),
              backgroundColor: Colors.transparent, // or any color
            ),

            SizedBox(width: 10), // spacing between avatar and container
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                color: Color(0xFF1ED760),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                'All',
                style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                'Music',
                style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                'Podcasts',
                style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.normal),
              ),
            )
          ],
        ),
      ),
      
      body: Column(
        children: [
          Row(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center, // center the text inside
                  decoration: BoxDecoration(
                    color: Colors.white10, // Spotify green background
                    borderRadius: BorderRadius.circular(8), // rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(2, 2), // subtle shadow
                      ),
                    ],
                  ),
                  child: Text(
                    'Arijit Singh All \n Songs ❤️',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis, // handles long text
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center, // center the text inside
                  decoration: BoxDecoration(
                    color: Colors.white10, // Spotify green background
                    borderRadius: BorderRadius.circular(8), // rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(2, 2), // subtle shadow
                      ),
                    ],
                  ),
                  child: Text(
                    '90s bollywood',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis, // handles long text
                  ),
                ),
              )


            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center, // center the text inside
                  decoration: BoxDecoration(
                    color: Colors.white10, // Spotify green background
                    borderRadius: BorderRadius.circular(8), // rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(2, 2), // subtle shadow
                      ),
                    ],
                  ),
                  child: Text(
                    'Arijit Singh All \n Songs ❤️',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis, // handles long text
                  ),
                ),
              ),
              // SizedBox(width: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center, // center the text inside
                  decoration: BoxDecoration(
                    color: Colors.white10, // Spotify green background
                    borderRadius: BorderRadius.circular(8), // rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(2, 2), // subtle shadow
                      ),
                    ],
                  ),
                  child: Text(
                    '90s bollywood',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis, // handles long text
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     width: 200,
              //     height: 50,
              //     alignment: Alignment.center, // center the text inside
              //     decoration: BoxDecoration(
              //       color: Colors.white10, // Spotify green background
              //       borderRadius: BorderRadius.circular(8), // rounded corners
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black26,
              //           blurRadius: 4,
              //           offset: Offset(2, 2), // subtle shadow
              //         ),
              //       ],
              //     ),
              //     child: Text(
              //       '90s bollywood',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //       ),
              //       overflow: TextOverflow.ellipsis, // handles long text
              //     ),
              //   ),
              // )


            ],
          ),
          Row(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center, // center the text inside
                  decoration: BoxDecoration(
                    color: Colors.white10, // Spotify green background
                    borderRadius: BorderRadius.circular(8), // rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(2, 2), // subtle shadow
                      ),
                    ],
                  ),
                  child: Text(
                    'Arijit Singh All \n Songs ❤️',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis, // handles long text
                  ),
                ),
              ),
              // SizedBox(width: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center, // center the text inside
                  decoration: BoxDecoration(
                    color: Colors.white10, // Spotify green background
                    borderRadius: BorderRadius.circular(8), // rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(2, 2), // subtle shadow
                      ),
                    ],
                  ),
                  child: Text(
                    '90s bollywood',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis, // handles long text
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     width: 200,
              //     height: 50,
              //     alignment: Alignment.center, // center the text inside
              //     decoration: BoxDecoration(
              //       color: Colors.white10, // Spotify green background
              //       borderRadius: BorderRadius.circular(8), // rounded corners
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.black26,
              //           blurRadius: 4,
              //           offset: Offset(2, 2), // subtle shadow
              //         ),
              //       ],
              //     ),
              //     child: Text(
              //       '90s bollywood',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //       ),
              //       overflow: TextOverflow.ellipsis, // handles long text
              //     ),
              //   ),
              // )


            ],
          ),


        ],
      )
    );
  }
}
