import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminScreenpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AdminScreenState();

}
class AdminScreenState extends State<AdminScreenpage> {
  var name = TextEditingController();
  var password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN PAGE', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(child: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
              onSaved: (value) {
                password.text = value.toString();
              },
              validator: (value) {
                if (value.toString() != "12345") {
                  return "Enter a correct password";
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submit,
              child: Text('Login'),
            ),
          ],
        ),
      ),
      ),
    );
  }
  void _submit() {
    if (formkey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Logged in Successfull"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login Failed,Incorrect password"),
        ),
      );
    }
  }
}





