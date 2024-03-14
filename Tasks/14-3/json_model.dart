import 'package:flutter/material.dart';

class PageModel extends StatelessWidget {
  late List list;

  PageModel({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text("albumId: ${list[i]['albumId']}"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("id: ${list[i]['id']}"),
                Text("id: ${list[i]['title']}"),

                Image.network(list[i]['url'] ?? ''),
                Image.network(list[i]['thumbnailUrl'] ?? ''),
              ],
            ),
          );
        });
  }
}
