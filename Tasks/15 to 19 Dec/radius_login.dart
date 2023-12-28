import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadiusLogin extends StatefulWidget {
  @override
  RadiusLoginState createState() => RadiusLoginState();
}

class RadiusLoginState extends State<RadiusLogin> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Login Screen"),
      ),
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fillColor: Colors.white12,
                filled: true,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),


            SizedBox(height: 30),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fillColor: Colors.white12,
                filled: true,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),


            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                String username = usernameController.text;
                String password = passwordController.text;
                print('Username: $username, Password: $password');
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
