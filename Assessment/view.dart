import 'package:flutter/material.dart';
import 'package:sqflitedb/db.dart';
import 'package:sqflitedb/main.dart';
import 'package:sqflite/sqflite.dart';

class ViewData extends StatefulWidget
{
  const ViewData({super.key});

  @override
  State<ViewData> createState() => ViewDataState();

}

class ViewDataState extends State<ViewData> {

  late Mydb db = Mydb();
  List<Map> slist = [];

  @override
  void initState()
  {
    super.initState();

    db.open();
    getdata();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(title: Text("View Details"),),
        body:  SingleChildScrollView
          (

            child: Container
              (

                child: slist.length == 0 ?
                Text("No any students to show.")
                    :
                Column(

                    children: slist.map((stuone)
                    {
                      return Card
                        (
                        child: ListTile(

                          leading: Icon(Icons.people),
                          title: Text(stuone["name"]),
                          subtitle: Text("Email:" + stuone["email"].toString() + ", Surname: " + stuone["surname"]),
                        ),
                      );
                    })
                        .toList())
            )
        )
    );
  }
  void getdata()
  {
    Future.delayed(Duration(milliseconds: 500),() async
    {
      slist = await db.db.rawQuery('SELECT * FROM students');
      setState(() {
      });
    });
  }
}