import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Image1page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Image1pagestate();
}

class Image1pagestate  extends State<Image1page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Description"),),
      body: Column(
        children: [
          Image.network("https://images.unsplash.com/photo-1518895949257-7621c3c786d7?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cm9zZSUyMGFlc3RoZXRpY3xlbnwwfHwwfHx8MA%3D%3D",width: 200,height: 200,fit: BoxFit.cover,),
        Text("Their stems are usually prickly and their glossy, green leaves have toothed edges. Rose flowers vary in size and shape. They burst with colours ranging from pastel pink, peach, and cream, to vibrant yellow, orange, and red. Many roses are fragrant, and some produce berry-like fruits called hips.", style: TextStyle(fontWeight:FontWeight.bold),textAlign: TextAlign.center,)

        ],
      ),
      
    ); 
    
    
  }
  
  
}
