import 'package:flutter/material.dart';

class Backbutton extends StatefulWidget {
  @override
  BackbuttonState createState() => BackbuttonState();
}

class BackbuttonState extends State<Backbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back button'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showCustomAlert(context);
          },
          child: Text("BACK"),
        ),
      ),
    );
  }

  Future<void> showCustomAlert(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('SNAPCHAT'),
          content: Text('Are you sure you want to exit'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Exit'),
            ),
          ],
        );
      },
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: Backbutton(),
  ));
}
