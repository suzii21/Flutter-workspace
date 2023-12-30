import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'details.dart';

enum gender { Male, Female }

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}
class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  gender _selectedOption = gender.Male;
  String dropdownValue = 'Rajkot';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController lastName = TextEditingController();
    TextEditingController firstName = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmpassword = TextEditingController();
    TextEditingController email = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Form ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple.shade200,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: firstName,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.purple.shade200),
                        ),
                        labelText: "Enter  your FirstName",
                        prefixIcon: Icon(Icons.person),
                      ),
                      onFieldSubmitted: (value) {
                        firstName.text = value.toString();
                      },
                      onSaved: (value) {
                        firstName.text = value.toString();
                      },
                      validator: (value) {
                        if (value
                            .toString()
                            .isEmpty) {
                          return "Enter your First Name";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: lastName,
                      decoration: InputDecoration(
                        labelText: "Enter your LastName",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.purple.shade200),
                        ),
                      ),
                      onFieldSubmitted: (value) {
                        lastName.text = value.toString();
                      },
                      onSaved: (value) {
                        lastName.text = value.toString();
                      },
                      validator: (value) {
                        if (value
                            .toString()
                            .isEmpty) {
                          return "Enter Password";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.purple.shade200),
                        ),
                        labelText: "Enter  your Password",
                        prefixIcon: Icon(Icons.lock),
                      ),
                      onFieldSubmitted: (value) {
                        password.text = value.toString();
                      },
                      onSaved: (value) {
                        password.text = value.toString();
                      },
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Enter your Password";
                        }

                        if (!isValidPassword(value.toString())) {
                          return "Password must have at least 6 characters, including uppercase, lowercase, digit, and special character.";
                        }

                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: confirmpassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Enter your ConfirmPassword",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.purple.shade200),
                        ),
                      ),
                      onFieldSubmitted: (value) {
                        confirmpassword.text = value.toString();
                      },
                      onSaved: (value) {
                        confirmpassword.text = value.toString();
                      },
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Enter Confirm Password";
                        }
                        if (value != password.text) {
                          return "Passwords do not match";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 10,
                height: 10,
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Enter  your Email",
                  prefixIcon: Icon(Icons.mail),
                ),
                onFieldSubmitted: (value) {
                  email.text = value.toString();
                },
                onSaved: (value) {
                  email.text = value.toString();
                },
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return "Enter your Email";
                  }
                  if (!isValidEmail(value.toString())) {
                    return "Enter a valid Email address";
                  }
                  return null;
                },
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),


              DropdownButton<String>(
                value: dropdownValue,
                items: <String>['Ahmedabad', 'Rajkot', 'Vadodara', 'Surat']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),

              Row(
                children: [
                  Text("Gender:"),
                  SizedBox(width: 50),
                  Row(
                    children: [
                      Radio(
                        value: gender.Male,
                        groupValue: _selectedOption,
                        onChanged: (gender? value) {
                          setState(() {
                            _selectedOption = value!;
                          });
                        },
                      ),
                      Text("Male"),
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Radio(
                        value: gender.Female,
                        groupValue: _selectedOption,
                        onChanged: (gender? value) {
                          setState(() {
                            _selectedOption = value!;
                          });
                        },
                      ),
                      Text("Female"),
                    ],
                  ),
                ],
              ),
              ElevatedButton(onPressed: (){


                if (!_formKey.currentState!.validate()) {
                  // Form validation failed
                  return;
                }

                if (_selectedOption == null) {
                  // Gender not selected
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Please select your gender."),
                    ),
                  );
                  return;
                }
                submit(
                  firstName.text,
                  lastName.text,
                  password.text,
                  confirmpassword.text,
                  email.text,
                  _selectedOption,
                  dropdownValue,
                );

              }, child: Text("Submit")),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }


  bool isValidPassword(String password) {
    final RegExp passwordRegex =
    RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)[A-Za-z\d]{6,}$');
    return passwordRegex.hasMatch(password);
  }

  bool isValidEmail(String email) {
    final RegExp emailRegex =
    RegExp(r'^[a-z0-9._-]+@[a-zA-Z0-9.-]+\.[a-z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  void submit(
      String firstName,
      String lastName,
      String password,
      String confirmpassword,
      String email,
      gender? selectedOption,
      String city,
      ) {

    Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => DetailsPage(
      firstName: firstName,
      lastName: lastName,
      password: password,
      confirmPassword: confirmpassword,
      email: email,
      selectedOption: selectedOption,
      city: city,
    ),
    ),
    );
    // Process your form data here
    print("Form submitted!");
  }
}
