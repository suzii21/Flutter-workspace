import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelCome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WELCOME PAGE"), titleTextStyle: TextStyle(fontWeight: FontWeight.bold),),
      body:Center(
        child: Column(
          children: [
            Text("Welcome")
          ],
        ),
      ),
    );
  }
}