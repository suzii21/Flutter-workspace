import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../5 Dec/adminscreen.dart';
import 'loginpage.dart';

class SplashScreen2 extends StatefulWidget{
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<SplashScreen2> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () =>
        Navigator.push(context, MaterialPageRoute(builder: (context) => AdminScreenpage()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child:Lottie.asset("images/Animation_2.json",height: 400,width: 400, fit: BoxFit.cover, repeat: true,)),
      ),
    );
  }
}