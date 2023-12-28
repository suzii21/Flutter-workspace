import 'package:application/module-3/que-11/welcome.dart';
import 'package:flutter/material.dart';

class Registrationpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegistrationpageState();
}
class RegistrationpageState extends State<Registrationpage> {
  var name = TextEditingController();
  var password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTRATION PAGE', style: TextStyle(fontWeight: FontWeight.bold),),
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
              decoration: InputDecoration(labelText: 'Email'),
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
                else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => WelCome(),
                    ),
                  );
                }
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
    }
  }
}






