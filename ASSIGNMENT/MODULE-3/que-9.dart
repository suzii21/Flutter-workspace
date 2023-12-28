// Write a program in android display screen color which the Color will
// be select from the radio button

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioColor extends StatefulWidget{
  @override
  RadioColorState createState() => RadioColorState();
}
class RadioColorState extends State<RadioColor>{
  Color selectedColor = Colors.white;
  void _changeColor(Color color) {
    setState(() {
      selectedColor = color;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Any Color', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        color: selectedColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile<Color>(
                title: Text('PINK'),
                value: Colors.pink.shade200,
                groupValue: selectedColor,
                onChanged: (Color? value) {
                  _changeColor(value!);
                },
              ),
              RadioListTile<Color>(
                title: Text('PURPLE'),
                value: Colors.purple.shade300,
                groupValue: selectedColor,
                onChanged: (Color? value) {
                  _changeColor(value!);
                },
              ),
              RadioListTile<Color>(
                title: Text('Blue'),
                value: Colors.indigo,
                groupValue: selectedColor,
                onChanged: (Color? value) {
                  _changeColor(value!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
