import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled3/14-3/json_model.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => Page1State();
}
class Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Json Parsing"),),
      body: FutureBuilder<List>
        (
        future: getdata(),
        builder: (context, ss) {
          if (ss.hasData) {
            return PageModel(list: ss.data!!);
          }
          if (ss.hasError) {
            print('Network Not Found');
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
  Future<List<dynamic>> getdata() async {
    var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    return jsonDecode(response.body);
  }
}
