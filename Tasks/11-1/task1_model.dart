import 'package:flutter/material.dart';

class Model2 extends StatelessWidget
{
  late List list;
  Model2({required this.list});
  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
        itemCount:list.length,
        itemBuilder:(context,i)
        {
          return ListTile
            (
            title: Text(list[i]['a_name']),
            leading: Image.network(list[i]['a_image'],width: 100,height: 50,),
          );
        });
  }
}
