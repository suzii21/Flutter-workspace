
import 'dart:async';
import 'package:demo1/images_splash/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget{
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<SplashScreen>{

  @override
  void initState()
  {
    super.initState();
       Timer(Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()))
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(width: 500, height: 500, child: Lottie.asset("images/animation.json",fit: BoxFit.cover ,repeat: true,)),
      ),
    );
  }
}