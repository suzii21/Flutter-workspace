import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'task1_model.dart';

class Jsonapi extends StatefulWidget {
  const Jsonapi({super.key});

  @override
  State<Jsonapi> createState() => JsonapiState();
}

class JsonapiState extends State<Jsonapi>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Json Parsing"),),
      body: FutureBuilder<List>
        (
        future: getdata(),
        builder: (context,ss)
        {
          if(ss.hasData)
          {
            return Model2(list:ss.data!!);
          }
          if(ss.hasError)
          {
            print('Network Not Found');
          }
          return CircularProgressIndicator();
        },
      ) ,
    );
  }
  Future<List> getdata()async
  {
    var response = await http.get(Uri.parse("https://suzanapidemo.000webhostapp.com/Newapi/view.php"));
    return jsonDecode(response.body);
  }
}

