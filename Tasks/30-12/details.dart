import 'package:flutter/material.dart';

import 'loginpage.dart';

class DetailsPage extends StatelessWidget {

  final String firstName;
  final String lastName;
  final String password;
  final String confirmPassword;
  final String email;
  final gender? selectedOption;
  final String city;

  DetailsPage({
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.confirmPassword,
    required this.email,
    required this.selectedOption,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("First Name: $firstName"),
            Text("Last Name: $lastName"),
            Text("Password: $password"),
            Text("Confirm Password: $confirmPassword"),
            Text("Email: $email"),
            Text("Gender: ${selectedOption == gender.Male ? 'Male' : 'Female'}"),
            Text("City: $city"),
          ],
        ),
      ),
    );
  }
}

// In the AdminPageState, modify the submit method to navigate to the UserDetailsPage:

