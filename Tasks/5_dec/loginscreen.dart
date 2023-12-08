import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Login Screen"),
      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/bgflower.jpg"),alignment: Alignment.center,
            fit:BoxFit.cover )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
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
