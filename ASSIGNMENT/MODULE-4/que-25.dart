// Write a code to display Splash Screen using Activity

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';
import '../loginpage.dart';


class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen"),
      ),
      body: Center(
        child: Lottie.network("https://app.lottiefiles.com/share/a7442b59-e140-47e1-b4b1-35b8d7863dce", width: 300, height: 300, repeat: true),
      ),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Welcome'),
      ),
    );
  }
}





