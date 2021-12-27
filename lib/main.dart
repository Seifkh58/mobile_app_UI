import 'package:flutter/material.dart';
import 'package:mobile_app/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Muli",
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: SplashScreen(),
    );
  }
}
