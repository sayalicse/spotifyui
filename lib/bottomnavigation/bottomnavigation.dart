import 'package:flutter/material.dart';
import 'package:spotifyui/Library/library.dart';
import 'package:spotifyui/widget/uihelper.dart';

import '../Create/create.dart';
import '../Home/home.dart';
import '../Search/search.dart';
import '../Spotify/spotify.dart';

class BottomNavigation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _BottomnavigationState();

}

class _BottomnavigationState extends State {
  int currentIdx = 0;

  final List<Widget> pages = [
    HomePage(),
    SearchPage(),
    LibraryPage(),
    SpotifyPremiumOffer(),
    CreatePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIdx,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black12,
          onTap: (index) {
            setState(() {
              currentIdx = index;
            });
          },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: UiHelper.CustomImage(imgurl: 'library.png'),label: 'library'),
          BottomNavigationBarItem(icon: UiHelper.CustomImage(imgurl: 'onespot.png'), label: 'Premium'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Profile'),
        ],
      ),
      body: IndexedStack(
        index: currentIdx,
        children: pages,
      ),
    );
  }
}