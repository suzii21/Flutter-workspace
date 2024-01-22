import 'package:flutter/material.dart';

class gamemodel extends StatelessWidget
{
  late List list;
  gamemodel({required this.list});

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
        itemCount:list.length,
        itemBuilder:(context,i)
        {
          return ListTile
            (
            leading: Image.network(list[i]["image"],height: 100, width: 100,),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(list[i]["title"],style: TextStyle(fontWeight: FontWeight.bold),),
                Text(list[i]["description"]),
                Text(list[i]["platform"]),
              ],
            ),
          );
        });
  }
}