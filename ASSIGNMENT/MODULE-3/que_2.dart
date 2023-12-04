//Create an application to take input number from user and print its
// reverse number in TextField

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReverseScript extends StatefulWidget{
  @override
  ReverseState createState() => ReverseState();
  }

class ReverseState extends State<ReverseScript> {
  @override
  TextEditingController numberController = TextEditingController();
  String reverseNumber = '';

  void _calculateReverse()
  {
    String originalNumber = numberController.text;
    String reversedNumber = originalNumber.split('').reversed.join();
    setState(()
    {
      reverseNumber = reversedNumber;
    }
    );
  }

  @override
  Widget build(BuildContext context)
  {
   return Scaffold(
     appBar: AppBar(backgroundColor: Colors.teal,
         title: Text("REVERSE STRING",)),
     body: Center(
       child:Column( mainAxisAlignment: MainAxisAlignment.center,
         children: [
           TextField(
             controller: numberController,
             keyboardType: TextInputType.number,
             decoration: InputDecoration(labelText: "Enter any number"),
           ),

           SizedBox(height: 20),
           ElevatedButton(
             onPressed: _calculateReverse,
             child: Text("Calculate Reverse"),

           ),
           SizedBox(height: 20),
           Text('Reverse Number: $reverseNumber',
             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
           ),
         ],
       )
     ),
   );
  }
}

