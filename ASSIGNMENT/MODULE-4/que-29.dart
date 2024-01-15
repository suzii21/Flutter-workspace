//Call via urllauncher, Send Sms via urllauncher

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';


class CallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var CallController = TextEditingController();
    var MsgController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Call and SMS ",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.purple.shade200,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: CallController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.purple.shade200),
                  ),
                  labelText: "Enter  your number",
                ),
              ),

              SizedBox(height: 25,),
              ElevatedButton(
                onPressed: () {

                  callNumber(CallController.text);
                }, child: Text("Make Call"),
              ),
              SizedBox(height: 25),

              TextFormField(
                controller: MsgController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.purple.shade200),
                  ),
                  labelText: "Enter  your Sms",
                ),
              ),

              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  sendSMSFunction(MsgController.text, CallController.text);
                },
                child: Text("Make Msg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
  callNumber(String num) async{
    var number = '+91${num}'; //set the number here
    bool? call = await FlutterPhoneDirectCaller.callNumber(number);
  }
}
void sendSMSFunction(String msg, String phoneNumber) async {
  var uri = Uri.parse('sms:$phoneNumber?body=$msg');
  if (await canLaunch('$uri')) {
    await launch('$uri');
  } else {
    throw 'Could not launch $uri';
  }
}