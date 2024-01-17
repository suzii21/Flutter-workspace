import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'db.dart';
import 'package:sqflitedb/main.dart';


class AddData extends StatefulWidget {
  const AddData({Key? key}) : super(key: key);

  @override
  State<AddData> createState() => AddDataState();
}
class AddDataState extends State<AddData> {
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController totalFees = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController marks = TextEditingController();

  late Mydb mydb = Mydb();

  List<String> courses = ['BCA', 'BBA', 'BA'];
  List<String> cities = ['Rajkot', 'Surat', 'Ahmedabad'];

  @override
  void initState() {
    super.initState();
    mydb.open();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Details"),),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: "Enter Your Name",
              ),
            ),
            TextField(
              controller: surname,
              decoration: InputDecoration(
                hintText: "Enter Your Surname",
              ),
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Enter Your Email",
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: "Select Course",
              ),
              value: null,
              onChanged: (value) {
                setState(() {
                  var selectedCourse = value;
                });
              },
              items: courses.map((course) {
                return DropdownMenuItem<String>(
                  value: course,
                  child: Text(course),
                );
              }).toList(),
            ),
            TextField(
              controller: address,
              decoration: InputDecoration(
                hintText: "Enter Your Address",
              ),
            ),
            TextField(
              controller: pincode,
              decoration: InputDecoration(
                hintText: "Enter Your Pincode",
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: "Select City",
              ),
              value: null,
              onChanged: (value) {
                setState(() {
                  var selectedCity = value!;
                });
              },
              items: cities.map((city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
            ),
            TextField(
              controller: totalFees,
              decoration: InputDecoration(
                hintText: "Enter Total Fees",
              ),
            ),
            TextField(
              controller: contact,
              decoration: InputDecoration(
                hintText: "Enter Your Contact",
              ),
            ),
            TextField(
              controller: marks,
              decoration: InputDecoration(
                hintText: "Enter Your Marks",
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  var selectedCourse;
                  var selectedCity;
                  mydb.db.rawInsert(
                      "INSERT INTO students (name,surname,email,course,address,pincode,city,totalFees,contact,marks) values(?,?,?,?,?,?,?,?,?,?)",
                      [
                        name.text.toString(),
                        surname.text.toString(),
                        email.text.toString(),
                        selectedCourse,
                        address.text.toString(),
                        pincode.text.toString(),
                        selectedCity,
                        totalFees.text.toString(),
                        contact.text.toString(),
                        marks.text.toString()
                      ]);
                  print("Inserted");
                },
                child: Text("Insert")),
                  SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}