// Create an application to input 2 numbers from user and all numbers
// between those 2 numbers in next activity

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputNumber extends StatefulWidget {
  @override
  InputState createState() => InputState();
}

class InputState extends State<InputNumber> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INPUT NUMBERS'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Number 1'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Number 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int number1 = int.parse(firstNumberController.text);
                int number2 = int.parse(secondNumberController.text);

                if (number1 < number2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayNumbersScreen(
                        number1: number1,
                        number2: number2,
                      ),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('INVALID INPUT'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OKAY'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('SUBMIT'),
            ),
          ],
        ),
      ),
    );
  }
}

class DisplayNumbersScreen extends StatelessWidget {
  final int number1;
  final int number2;

  DisplayNumbersScreen({required this.number1, required this.number2});

  @override
  Widget build(BuildContext context) {
    List<int> numbers = List.generate(number2 - number1 - 1, (index) => number1 + index + 1);

    return Scaffold(
      appBar: AppBar(
        title: Text('DISPLAY NUMBERS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numbers between $number1 and $number2:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              numbers.join(', '),
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}