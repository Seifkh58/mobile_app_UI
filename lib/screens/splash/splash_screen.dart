import 'package:flutter/material.dart';
import 'package:mobile_app/screens/splash/widgets/splash_content.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SplashContent(),
    );
  }
}
