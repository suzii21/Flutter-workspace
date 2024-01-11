//Write a code to display alert dialog with positive, negative and
//neutral button and display toast respectively user's choice

import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Dialog'),
          content: Text('Choose an option:'),
          actions: [
            TextButton(
              onPressed: () {
                showSnackBar(context, 'Positive Button Clicked');
                Navigator.of(context).pop();
              },
              child: Text('Positive'),
            ),
            TextButton(
              onPressed: () {
                showSnackBar(context, 'Negative Button Clicked');
                Navigator.of(context).pop();
              },
              child: Text('Negative'),
            ),
            TextButton(
              onPressed: () {
                showSnackBar(context, 'Neutral Button Clicked');
                Navigator.of(context).pop();
              },
              child: Text('Neutral'),
            ),
          ],
        );
      },
    );
  }

  void showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(context);
          },
          child: Text('Show AlertDialog'),
        ),
      ),
    );
  }
}