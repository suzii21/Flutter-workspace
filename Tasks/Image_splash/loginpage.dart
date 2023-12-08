import 'package:flutter/material.dart';
import '../checkbox.dart';
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
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar
       (
       backgroundColor: Colors.deepPurpleAccent,
       title: const Text("LoginPage"),),
    body:Center(
      child:Form(
        key: formkey,
        child: Column (
        children:  [

          Text("Login form"),
          SizedBox(width: 10,height: 10),

          TextFormField(controller:name,decoration: InputDecoration(hintText: "Enter Your Name",),),
          SizedBox(width: 10,height: 10),

          TextFormField(controller:surname,decoration: InputDecoration(hintText: "Enter Your surname",),),
          SizedBox(width: 10,height: 10),

          TextFormField(controller:email,decoration: InputDecoration(hintText: "Enter Your email",),),
          SizedBox(width: 10,height: 10),

          TextFormField(
              controller:password,
              decoration: InputDecoration(hintText: "Enter Your Password"),
              keyboardType: TextInputType.text,
              obscureText: true,
              onFieldSubmitted: (value)
              {
                password.text = value.toString();
              },
              onSaved: (value)
              {
              password.text = value.toString();
              },
              validator: (value)
              {
                if (value.toString()!= "12345")
                  {
                    return "Enter a correct password";
                  }return null;
              }
          ),
          SizedBox(width: 10,height: 10),
          ElevatedButton(onPressed:(){
            _submit();
            if (password.text.toString()=="12345")
          {
            Navigator.push(context,MaterialPageRoute(builder: (context)=> Check(),));
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
    ),
    );
  }
   void _submit()
  {
    if(formkey.currentState!.validate())
      {
        print("Submitted");
      }
  }
}