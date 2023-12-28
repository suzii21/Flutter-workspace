import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AlertPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("CONFIRMATION"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            ElevatedButton
              (
                onPressed: () async
                {
                  final ConfirmAction? action = await myconfirmdialog(context);
                  print("CONFIRM ACTION $action" );
                }, child: Text("CLICK")
            )
          ],
        ),
      ),
    );
  }
}
enum ConfirmAction { Cancel, Exit}
Future<ConfirmAction?> myconfirmdialog(BuildContext context)
{
  return showDialog<ConfirmAction>
    (
    context: context,
    builder: (BuildContext context)
    {
      return AlertDialog
        (
        title: Text('Are you sure you want to exit?'),
        content: const Text('you will exit the app'),
        actions:
        [
          ElevatedButton(onPressed: ()
          {
            Navigator.of(context).pop(ConfirmAction.Cancel);
          }, child: Text("CANCEL")),
          ElevatedButton(onPressed: ()
          {
            SystemNavigator.pop();

          }, child: (Text("EXIT")
          )
          ),
          SizedBox(height: 20,),
        ],
      );
    },
  );
}