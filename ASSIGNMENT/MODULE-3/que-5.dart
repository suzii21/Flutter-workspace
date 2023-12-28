//create an application to change background when button is clicked

import 'dart:math';

import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {

  @override
  State<TaskPage> createState() => TaskState();
}

class TaskState extends State<TaskPage> {


  Color _backgroundColor = Colors.pink;

  void changeBackgroundColor() {
    // Generate a random color
    final random = Random();
    Color newColor = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256), 1,
    );
    setState(() {
      _backgroundColor = newColor;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Background Changer'),
        ),
        body: Container(
          color: _backgroundColor,
          child: Center(
            child: ElevatedButton(
              onPressed: changeBackgroundColor,
              child: Text('Change Background'),
            ),
          ),
        )
    );
  }
}
