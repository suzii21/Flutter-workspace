import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExitPage extends StatelessWidget {
  Future<void> _showExitDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Exit App?'),
          content: Text('Are you sure you want to exit?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // User pressed No
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _exitApp();
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  void _exitApp() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      SystemNavigator.pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exit App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Press the button to exit'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showExitDialog(context);
              },
              child: Text('Exit App'),
            ),
          ],
        ),
      ),
    );
  }
}
