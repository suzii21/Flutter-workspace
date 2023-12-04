import 'package:flutter/material.dart';

import 'images.dart';

class LoginPage extends StatefulWidget{
  @override

  State<StatefulWidget> createState() => LoginPageState();
  
}

class LoginPageState extends State<LoginPage>{
  var name = TextEditingController();
  var surname = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar
       (
       backgroundColor: Colors.deepPurpleAccent,
       title: const Text("LoginPage"),),
    body:Center(
      child:Column (
      children:  [

        Text("Login form"),
        SizedBox(width: 10,height: 10),

        TextField(controller:name,decoration: InputDecoration(hintText: "Enter Your Name",),),
        SizedBox(width: 10,height: 10),

        TextField(controller:surname,decoration: InputDecoration(hintText: "Enter Your surname",),),
        SizedBox(width: 10,height: 10),

        TextField(controller:email,decoration: InputDecoration(hintText: "Enter Your email",),),
        SizedBox(width: 10,height: 10),

        TextField(controller:password,decoration: InputDecoration(hintText: "Enter Your Password",prefixIcon:Icon(Icons.lock))),
        SizedBox(width: 10,height: 10),


        ElevatedButton(onPressed:(){
          if (password.text.toString()=="12345")
        {
          Navigator.push(context,MaterialPageRoute(builder: (context)=> ImagesPage(),));
        }
        else
        {
          print("please check your password");
        }
          // Navigator.of(context).pop();
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>Images()));

        },child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),),
        SizedBox(width: 10,height: 10),

      ],
      ),
    ),
    );
  }

  LoginPage() {}
}