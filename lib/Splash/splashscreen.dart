import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotifyui/widget/uihelper.dart';

import '../Login/login.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SplashScreenState();

}

class _SplashScreenState extends State {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));//when user go to login screen and push back button then it goes to directly outside the app not to splash screen
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           UiHelper.CustomImage(imgurl: 'spoti.png')
         ],
       ),
     ),
    );
  }
}


