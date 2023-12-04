import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Image4page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Image4pagestate();
}
class Image4pagestate  extends State<Image4page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Description"),),
      body: Column(
        children: [
          Image.network("https://images.unsplash.com/photo-1501973931234-5ac2964cd94a?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGlseXxlbnwwfHwwfHx8MA%3D%3D",width: 200,height: 200,fit: BoxFit.cover,),
          Text("The true lilies are erect perennial plants with leafy stems, scaly bulbs, usually narrow leaves, and solitary or clustered flowers. The flowers consist of six petal-like segments, which may form the shape of a trumpet, with a more or less elongated tube, as in the Madonna lily (Lilium candidum)", style: TextStyle(fontWeight:FontWeight.bold),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
