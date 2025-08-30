import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 400,
          height: 300,
          color: Color(0xff303030),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(3), // Border thickness
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey, // Grey border color
                          width: 0.1, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff343434),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.grey, // Apply grey color filter to image
                            BlendMode.srcIn,
                          ),
                          child: Image.asset(
                            'assets/images/music.png', // ✅ Add proper extension
                            fit: BoxFit.cover,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Playlist',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(height: 0.5,),
                      Text('Create a playlist with songs or episodes',style: TextStyle(color: Colors.grey,fontSize: 12),),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(3), // Border thickness
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey, // Grey border color
                          width: 0.1, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff343434),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.grey, // Apply grey color filter to image
                            BlendMode.srcIn,
                          ),
                          child: Image.asset(
                            'assets/images/group.png', // ✅ Add proper extension
                            fit: BoxFit.cover,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Collaborative playlist',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(height: 0.5,),
                      Text('Create a playlist together with friends',style: TextStyle(color: Colors.grey,fontSize: 12),),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(3), // Border thickness
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey, // Grey border color
                          width: 0.1, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff343434),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.grey, // Apply grey color filter to image
                            BlendMode.srcIn,
                          ),
                          child: Image.asset(
                            'assets/images/blend.png', // ✅ Add proper extension
                            fit: BoxFit.cover,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Blend',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(height: 0.5,),
                      Text("Combine your friends' tastes into a playlist",style: TextStyle(color: Colors.grey,fontSize: 12),),
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
