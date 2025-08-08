import 'package:flutter/material.dart';
import 'Home/home.dart';
import 'Login/login.dart';
import 'Search/search.dart';
import 'Splash/splashscreen.dart';
import 'bottomnavigation/bottomnavigation.dart'; // ✅ Correct relative import
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData.dark(),
      home: SearchPage(), // Now SplashScreen will be recognized
    );
  }
}


