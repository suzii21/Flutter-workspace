// Write a code to display simple alert dialog with title, description and
// icon when button is clicked

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DisplayAlert extends StatefulWidget {
  const DisplayAlert({super.key});

  @override
  State<DisplayAlert> createState() => DisplayAlertState();
}

class DisplayAlertState extends State<DisplayAlert> {

  bool _visible = false;
  var content = "ARE YOU SURE YOU WANT TO LOGIN.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple.shade200,
        title: Text("ALERT DIALOG",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade200
                  ),
                  onPressed: (){
                    simpleDialog();
                  },
                  child: Text("LOGIN",style: TextStyle(color: Colors.white),)),
            ],
          ),
        ],
      ),
    );
  }

  void simpleDialog(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("ARE YOU SURE YOU WANT TO EXIT",style: TextStyle(color: Colors.black),),
        content: Text(content,style: TextStyle(color: Colors.grey.shade500),),
        actions: [
          ElevatedButton(
              onPressed: (){
                setState(() {
                  _visible = true;
                });
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("YOU ARE LOGGED IN",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.purple.shade200,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade200
              ),
              child: Text("Yes",style: TextStyle(color: Colors.white),)),
          ElevatedButton(
              onPressed: (){
                setState(() {
                  _visible = false;
                });
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("YOU CAN'T LOGIN",style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.pink.shade200,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade200
              ),child: Text("No",style: TextStyle(color: Colors.white),)),
        ],
      );
    });
  }
}