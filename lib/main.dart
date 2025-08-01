import 'package:flutter/material.dart';
import 'Login/login.dart';
import 'Splash/splashscreen.dart'; // ✅ Correct relative import

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
      home: Login(), // Now SplashScreen will be recognized
    );
  }
}


