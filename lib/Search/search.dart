import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SearchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 8,
            backgroundColor: Colors.brown,
            backgroundImage: AssetImage('assets/images/slett.png'),
          ),
        ),
        title: Text('Search',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {
              // Handle camera click
            },
          ),
        ],
      ),
    body: SingleChildScrollView(
      child:
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft, // Forces it to left
            child: Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    "What do you want to listen to",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                    overflow: TextOverflow.ellipsis, // Avoid text overflow
                  ),
                ],
              ),
            ),
          ),
        ),

        // SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.pink, // Card background
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    // Text at top-left
                    Positioned(
                      top: 12,
                      left: 12,
                      child: Text(
                        "Music",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Image at bottom-right
                    Positioned(
                      bottom: -3, // pull down a bit more
                      right: 4,  // push right a bit more
                      child: Transform.rotate(
                        angle: 0.20, // stronger right tilt
                        alignment: Alignment.bottomRight, // pivot from bottom-right corner
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/femsinger.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )



                  ],
                ),
              ),


              SizedBox(
                width: 10,
              ),
              Container(
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                    color: Color(0xFF004526), // Card background
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    // Text at top-left
                    Positioned(
                      top: 12,
                      left: 12,
                      child: Text(
                        "Podcasts",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Image at bottom-right
                    Positioned(
                      bottom: -3, // pull down a bit more
                      right: 4,  // push right a bit more
                      child: Transform.rotate(
                        angle: 0.20, // stronger right tilt
                        alignment: Alignment.bottomRight, // pivot from bottom-right corner
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/podcast.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )



                  ],
                ),
              ),

            ],
          ),
        ),
        // SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                    color: Color(0xFF7F00FF), // Card background
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    // Text at top-left
                    Positioned(
                      top: 12,
                      left: 12,
                      child: Text(
                        "Live Events",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Image at bottom-right
                    Positioned(
                      bottom: -3, // pull down a bit more
                      right: 4,  // push right a bit more
                      child: Transform.rotate(
                        angle: 0.20, // stronger right tilt
                        alignment: Alignment.bottomRight, // pivot from bottom-right corner
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/hindimusic.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )



                  ],
                ),
              ),


              SizedBox(
                width: 10,
              ),
              Container(
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFF082567),
                  // Card background
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    // Text at top-left
                    Positioned(
                      top: 12,
                      left: 12,
                      child: Text(
                        "Home of \n I-Pop",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Image at bottom-right
                    Positioned(
                      bottom: -3, // pull down a bit more
                      right: 4,  // push right a bit more
                      child: Transform.rotate(
                        angle: 0.20, // stronger right tilt
                        alignment: Alignment.bottomRight, // pivot from bottom-right corner
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/images/hindimusic.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )



                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8,),
        Row(
          children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(8), // adjust radius as needed
                 child: Image.asset(
                   'assets/images/hindimusic.jpg',
                   width: 50,
                   height: 50,
                   fit: BoxFit.cover,
                 ),
               )

             ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Advertisement',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                SizedBox(height: 4), // spacing between texts
                Text(
                  'Anirudh Ravichander',
                  style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(width: 140,),
            Icon(Icons.more_vert, color: Colors.white, size: 20),

          ],
        ),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft, // places container at the start
            child: Container(
              width: 410,
              height: 150,
              decoration: BoxDecoration(
                color: Color(0xFF452C63).withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0), // spacing from edges
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/hindimusic.jpg',
                            width: 60, // small box size
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 12),
                       // space between image & text
                        Expanded(
                          child: Text(
                            "Viral Global Hit Song",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text('Anirudh Ravichander',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.normal),),
                        SizedBox(width: 100,),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF452C63), // button background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8), // optional rounded corners
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // optional padding
                          ),
                          child: Text(
                            'Listen now',
                            style: TextStyle(
                              color: Colors.white, // text color
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Align(
        //     alignment: Alignment.centerLeft,
        //       child: Text('Discover something new',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
        // ),
        Container(
          height: 200,
          width: double.infinity,
          child: DiscoverVideos(),

        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Browse all',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 500,
            height: 1000,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              padding: EdgeInsets.all(12),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 200 / 70,

              children: () {
                // 🎨 Different colors
                final List<Color> cardColors = [
                  Color(0xFF082567), // Navy blue
                  Color(0xFF452C63), // Purple
                  Color(0xFF7F00FF), // Violet
                  Color(0xFF004526), // Dark green
                  Color(0xFF1E90FF), // Dodger blue
                  Color(0xFFFF5722), // Orange
                ];

                // 📝 Different texts + images
                final List<Map<String, String>> cardData = [
                  {"title": "Made For You", "image": "assets/images/hindimusic.jpg"},
                  {"title": "New Releases", "image": "assets/images/podcast.jpg"},
                  {"title": "Rain & Monsoon", "image": "assets/images/femsinger.jpg"},
                  {"title": "Hindi", "image": "assets/images/hindimusic.jpg"},
                  {"title": "Telugu", "image": "assets/images/podcast.jpg"},
                  {"title": "Upcoming Releases", "image": "assets/images/femsinger.jpg"},
                  {"title": "Summer", "image": "assets/images/hindimusic.jpg"},
                  {"title": "Bhojpuri", "image": "assets/images/podcast.jpg"},
                  {"title": "Ghazals", "image": "assets/images/femsinger.jpg"},
                  {"title": "Malayalam", "image": "assets/images/hindimusic.jpg"},
                  {"title": "Tamil", "image": "assets/images/podcast.jpg"},
                  {"title": "Video Podcast", "image": "assets/images/femsinger.jpg"},
                  {"title": "Summer", "image": "assets/images/hindimusic.jpg"},
                  {"title": "Pop", "image": "assets/images/podcast.jpg"},
                  {"title": "Love", "image": "assets/images/femsinger.jpg"},
                  {"title": "Trending", "image": "assets/images/hindimusic.jpg"},
                  {"title": "Mood", "image": "assets/images/podcast.jpg"},
                  {"title": "Party", "image": "assets/images/femsinger.jpg"},
                ];

                return List.generate(cardData.length, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: cardColors[index % cardColors.length],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 12,
                          left: 12,
                          child: Text(
                            cardData[index]["title"]!,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -3,
                          right: 4,
                          child: Transform.rotate(
                            angle: 0.20,
                            alignment: Alignment.bottomRight,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                cardData[index]["image"]!,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                });
              }(),
            ),
          ),
        )

      ],
    ),
    )

  );
  }

}

class DiscoverVideos extends StatelessWidget {
  const DiscoverVideos({super.key});

  @override
  Widget build(BuildContext context) {
    // 🌍 Example video URLs (replace with your own links)
    final List<Map<String, dynamic>> videoItems = [
      {"videoUrl": "https://cdn.pixabay.com/video/2025/01/10/251873_tiny.mp4"},
      {"videoUrl": "https://cdn.pixabay.com/video/2023/04/24/160342-820741249_tiny.mp4"},
      {"videoUrl": "https://media.istockphoto.com/id/2121501112/video/cheetah-extends-in-the-heart-of-the-kenyan-savannah.mp4?s=mp4-640x640-is&k=20&c=ax89e64xHAGnWhGqkWYEW77K892NDry2fhspmisGauI="},
      {"videoUrl": "https://cdn.pixabay.com/video/2025/01/10/251873_tiny.mp4"},
      {"videoUrl": "https://cdn.pixabay.com/video/2023/04/24/160342-820741249_tiny.mp4"},
      {"videoUrl": "https://media.istockphoto.com/id/2121501112/video/cheetah-extends-in-the-heart-of-the-kenyan-savannah.mp4?s=mp4-640x640-is&k=20&c=ax89e64xHAGnWhGqkWYEW77K892NDry2fhspmisGauI="},
      {"videoUrl": "https://cdn.pixabay.com/video/2025/01/10/251873_tiny.mp4"},
      {"videoUrl": "https://cdn.pixabay.com/video/2023/04/24/160342-820741249_tiny.mp4"},
      {"videoUrl": "https://media.istockphoto.com/id/2121501112/video/cheetah-extends-in-the-heart-of-the-kenyan-savannah.mp4?s=mp4-640x640-is&k=20&c=ax89e64xHAGnWhGqkWYEW77K892NDry2fhspmisGauI="},
      {"videoUrl": "https://cdn.pixabay.com/video/2025/01/10/251873_tiny.mp4"},
      {"videoUrl": "https://cdn.pixabay.com/video/2023/04/24/160342-820741249_tiny.mp4"},
      {"videoUrl": "https://media.istockphoto.com/id/2121501112/video/cheetah-extends-in-the-heart-of-the-kenyan-savannah.mp4?s=mp4-640x640-is&k=20&c=ax89e64xHAGnWhGqkWYEW77K892NDry2fhspmisGauI="},
      {"videoUrl": "https://cdn.pixabay.com/video/2025/01/10/251873_tiny.mp4"},
      {"videoUrl": "https://cdn.pixabay.com/video/2023/04/24/160342-820741249_tiny.mp4"},
      {"videoUrl": "https://media.istockphoto.com/id/2121501112/video/cheetah-extends-in-the-heart-of-the-kenyan-savannah.mp4?s=mp4-640x640-is&k=20&c=ax89e64xHAGnWhGqkWYEW77K892NDry2fhspmisGauI="},
      {"videoUrl": "https://cdn.pixabay.com/video/2025/01/10/251873_tiny.mp4"},
      {"videoUrl": "https://cdn.pixabay.com/video/2023/04/24/160342-820741249_tiny.mp4"},
      {"videoUrl": "https://media.istockphoto.com/id/2121501112/video/cheetah-extends-in-the-heart-of-the-kenyan-savannah.mp4?s=mp4-640x640-is&k=20&c=ax89e64xHAGnWhGqkWYEW77K892NDry2fhspmisGauI="},

    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Discover something new',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: videoItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: VideoCard(videoUrl: videoItems[index]["videoUrl"]),
              );
            },
          ),
        ),
      ],
    );
  }
}

class VideoCard extends StatefulWidget {
  final String videoUrl;

  const VideoCard({super.key, required this.videoUrl});

  @override
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideo;

  @override
  void initState() {
    super.initState();
    // 🎥 Use network URL instead of assets
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    _initializeVideo = _controller.initialize().then((_) {
      _controller.setLooping(true);
      _controller.setVolume(0.0); // muted autoplay
      _controller.play();
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideo,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            width: 120,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
            ),
            clipBehavior: Clip.antiAlias,
            child: VideoPlayer(_controller),
          );
        } else {
          return Container(
            width: 120,
            height: 160,
            alignment: Alignment.center,
            child: CircularProgressIndicator(color: Colors.white),
          );
        }
      },
    );
  }
}



