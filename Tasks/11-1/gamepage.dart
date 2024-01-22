import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'gamemodel.dart';

class GamePage extends StatefulWidget {
  @override
  State<GamePage> createState() => GamePageState();
}
class GamePageState extends State<GamePage>
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
            return gamemodel(list:ss.data!!);
          }
          if(ss.hasError)
          {
            print('Network Not Found');
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
  Future<List> getdata()async
  {
    var response = await http.get(Uri.parse("https://suzanapidemo.000webhostapp.com/gameapi/view.php"));
    return jsonDecode(response.body);
  }
}
