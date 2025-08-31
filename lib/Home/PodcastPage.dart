import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'MusicPage.dart';
import 'home.dart';

class PodcastPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.black,
      title: Row(
        children: [
          // Profile Icon
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.brown,
            backgroundImage: AssetImage('assets/images/slett.png'),
          ),

          SizedBox(width: 10),

          // "All" Button
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: Color(0xFF1ED760),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                'All',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),


          SizedBox(width: 10),

          // "Music" Button → Clickable
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Musicpage()),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                'Music',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),

          SizedBox(width: 10),

          // "Podcasts" Button
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PodcastPage()),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                'Podcast',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),

        ],
      ),
    ),
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 400,
              height: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff663C1F)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white, // White border color
                              width: 0.3,           // Border thickness
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/images/sanatan.jpg'),
                              fit: BoxFit.cover, // Ensures image fits properly
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shree Krishna Gyan:',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                            SizedBox(height: 1,),
                            Text('जीवन बदल देने वाले श्री...',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                            SizedBox(height: 1,),
                            Text('Episode . सनातन - Eternal Way ....')
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 15,right: 10),
                          child: Icon(Icons.add_circle_outline_rounded,size: 25,color: Colors.white,),
                        )

                      ],
                    ),
                  ),

                    const VideoContainer(),
                  SizedBox(height: 5,),
                  RichText(
                   textAlign: TextAlign.left,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Aug 06.23min. ', // White bold text
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        TextSpan(
                          text: '✨In this episode,we explore the\n timeless wisdom of Shree Krishna as revealed in the\n Bhagavad Gita.These life lessons(vani) are not', // Grey normal text
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Your action here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black45, // Button background color
                            shape: const StadiumBorder(),  // Elliptical shape
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                            elevation: 5,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.volume_off, // Unmute icon
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Unmute episode",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(width: 20,),

                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,  // Change to white if needed
                          size: 25,            // Adjust size
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(4), // Space around the icon
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,// Makes the container circular
                            border: Border.all(color: Colors.white, width: 1), // White border
                          ),
                          child: const Icon(
                            Icons.play_arrow,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                      )



                    ],
                  ),




                ],
              ),
            ),

          ),
          // SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 400,
              height: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff663C1F)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white, // White border color
                              width: 0.3,           // Border thickness
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/images/nat.jpg'),
                              fit: BoxFit.cover, // Ensures image fits properly
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ummeed | Season 1 |',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                            SizedBox(height: 1,),
                            Text('Episode 12 | 2% Club ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                            SizedBox(height: 1,),
                            Text('Episode . Umeed by Zakir Khan')
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 15,right: 10),
                          child: Icon(Icons.add_circle_outline_rounded,size: 25,color: Colors.white,),
                        )

                      ],
                    ),
                  ),

                  const VideoContainer(),
                  SizedBox(height: 5,),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '12-Jul-2024.16min. ', // White bold text
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        TextSpan(
                          text: 'Season Finale!Hope you enjoyed \n the show,and the lesson are learned. PS.Zakir Khan\n and Gaana hold the copyright for this show', // Grey normal text
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Your action here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black45, // Button background color
                            shape: const StadiumBorder(),  // Elliptical shape
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                            elevation: 5,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.volume_off, // Unmute icon
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Unmute episode",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(width: 20,),

                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,  // Change to white if needed
                          size: 25,            // Adjust size
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(4), // Space around the icon
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,// Makes the container circular
                            border: Border.all(color: Colors.white, width: 1), // White border
                          ),
                          child: const Icon(
                            Icons.play_arrow,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                      )



                    ],
                  ),




                ],
              ),
            ),

          ),


        ],
      ),
    ),
  );
  }

}


class VideoContainer extends StatefulWidget {
  const VideoContainer({Key? key}) : super(key: key);

  @override
  State<VideoContainer> createState() => _VideoContainerState();
}

class _VideoContainerState extends State<VideoContainer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    // Initialize Video Player with the network URL
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://media.istockphoto.com/id/2179276022/video/inside-of-radha-madan-mohan-temple-vrindavan-india.mp4?s=mp4-640x640-is&k=20&c=Qn5eLh4bgPgFsf6FZQF8W9iNh2Ytx6QltHfnh3x5vYw=',
      ),
    )
      ..initialize().then((_) {
        setState(() {}); // Refresh the UI when video is ready
        _controller.play(); // Auto-play the video
        _controller.setLooping(true); // Enable looping
      });
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose controller when not needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: Colors.black,
      child: _controller.value.isInitialized
          ? ClipRRect(
        borderRadius: BorderRadius.circular(0), // Optional rounded corners
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),
      )
          : const Center(
        child: CircularProgressIndicator(color: Colors.white),
      ),
    );
  }
}
