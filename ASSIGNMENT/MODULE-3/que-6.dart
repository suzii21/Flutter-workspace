// create an application to increate font size when plus button click and decrease when minus button click

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FontPage extends StatefulWidget{
  @override
  fontState createState() =>fontState();
}
class fontState extends State<FontPage>{
  double fontSize = 30;
  void increaseFontSize() {
    setState(() {
      fontSize += 2;
    });
  }

  void decreaseFontSize() {
    if (fontSize > 2) {
      setState(() {
        fontSize -= 2;
      });
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Font Style"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello World',
              style: TextStyle(fontSize: fontSize),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: increaseFontSize,
            child: Icon(Icons.add),
            backgroundColor: Colors.pinkAccent,
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: decreaseFontSize,
            child: Icon(Icons.remove),
            backgroundColor: Colors.black12,
          ),
        ],
      ),
    );
  }
}
