import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alert extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
        onPressed: ()
        {
          showalert(context);
        }, child: Text("Click"),
        ),
      ),
    );
  }

  void showalert(BuildContext context)
  {

    Widget YESButton = ElevatedButton
      (
      child: Text("YES"),
      onPressed: ()
      {
        Navigator.of(context).pop();
      },
    );

    Widget NOButton = ElevatedButton
      (
      child: Text("NO"),
      onPressed: ()
      {

      },
    );
    AlertDialog alert = AlertDialog
      (
      title: Text("INSTAGRAM"),
      content: Text("Are you sure you want to exit?"),
      actions:
      [
        YESButton,
        NOButton

      ],
    );

    showDialog
      (
      context: context,
      builder: (BuildContext context)
      {
        return alert;
      },
    );
  }
}