import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cardItems = [
      {'text': "Music", 'color': const Color(0xFFFE019A), 'image': 'assets/images/femsinger.jpg'},
      {'text': "Podcasts", 'color': const Color(0xFF006241), 'image': 'assets/images/podcast.jpg'},
      {'text': "Live Events", 'color': const Color(0xFFb81ef0), 'image': 'assets/images/livee.jpg'},
      {'text': "Home of\nI-Pop", 'color': const Color(0xFF17236a), 'image': 'assets/images/femsinger.jpg'},
      {'text': "Trending", 'color': Colors.orange, 'image': 'assets/images/podcast.jpg'},
      {'text': "Workout", 'color': Colors.red, 'image': 'assets/images/livee.jpg'},
      {'text': "Relax", 'color': Colors.teal, 'image': 'assets/images/femsinger.jpg'},
      {'text': "Study", 'color': Colors.blue, 'image': 'assets/images/podcast.jpg'},
      {'text': "Travel", 'color': Colors.purple, 'image': 'assets/images/livee.jpg'},
      {'text': "Favorites", 'color': Colors.green, 'image': 'assets/images/femsinger.jpg'},
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.brown,
            child: ClipOval(
              child: Image.asset('assets/images/slett.png', fit: BoxFit.cover, width: 36, height: 36),
            ),
          ),
        ),
        title: const Text("Search", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        actions: [IconButton(icon: const Icon(Icons.camera_alt), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Expanded(child: Text("What do you want to listen to?", style: TextStyle(color: Colors.grey))),
                  ],
                ),
              ),
            ),
            // Start browsing
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('Start browsing', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            _buildCardRow(
              leftText: "Music", leftColor: const Color(0xFFFE019A), leftImage: 'assets/images/femsinger.jpg',
              rightText: "Podcasts", rightColor: const Color(0xFF006241), rightImage: 'assets/images/podcast.jpg',
            ),
            const SizedBox(height: 15),
            _buildCardRow(
              leftText: "Live Events", leftColor: const Color(0xFFb81ef0), leftImage: 'assets/images/livee.jpg',
              rightText: "Home of\n I-Pop", rightColor: const Color(0xFF17236a), rightImage: 'assets/images/femsinger.jpg',
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('Discover something new', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            SizedBox(height: 120, child: VideoListWidget()),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Browse all', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            // Browse all grid
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: cardItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10, childAspectRatio: 3 / 1,
                ),
                itemBuilder: (context, index) {
                  final item = cardItems[index];
                  return _buildGridCard(text: item['text'], color: item['color'], imagePath: item['image']);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildCardRow({
    required String leftText, required Color leftColor, required String leftImage,
    required String rightText, required Color rightColor, required String rightImage,
  }) {
    return Row(
      children: [
        _buildCard(leftText, leftColor, leftImage),
        const SizedBox(width: 15),
        _buildCard(rightText, rightColor, rightImage),
      ],
    );
  }

  static Widget _buildCard(String text, Color color, String imagePath) {
    return Stack(
      children: [
        Container(height: 70, width: 190, decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8))),
        Positioned(top: 8, left: 8, child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold))),
        Positioned(
          bottom: -5,
          right: -5,
          child: Transform.rotate(
            angle: 0.3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(imagePath, height: 60, width: 60, fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }

  static Widget _buildGridCard({required String text, required Color color, required String imagePath}) {
    return Container(
      height: 70,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -5,
            right: -5,
            child: Transform.rotate(
              angle: 0.3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(imagePath, height: 60, width: 60, fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class VideoListWidget extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {"url": "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4", "hashtags": "#love #romantic"},
    {"url": "https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_1mb.mp4", "hashtags": "#nature #wildlife"},
    {"url": "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4", "hashtags": "#art #creative"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: videos.length,
      itemBuilder: (context, index) => VideoItem(videoUrl: videos[index]["url"]!, hashtags: videos[index]["hashtags"]!),
    );
  }
}

class VideoItem extends StatefulWidget {
  final String videoUrl;
  final String hashtags;
  const VideoItem({Key? key, required this.videoUrl, required this.hashtags}) : super(key: key);

  @override
  _VideoItemState createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black12,
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: _controller.value.isInitialized
                  ? FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              )
                  : const Center(child: CircularProgressIndicator()),
            ),
          ),
          Positioned(
            bottom: 4,
            left: 4,
            child: Text(widget.hashtags, style: const TextStyle(color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold, backgroundColor: Colors.black54)),
          ),
        ],
      ),
    );
  }
}
