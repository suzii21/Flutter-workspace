import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Image3page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Image3pagestate();

}

class Image3pagestate  extends State<Image3page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Description"),),
      body: Column(
        children: [
          Image.network("https://images.unsplash.com/photo-1589994160839-163cd867cfe8?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHR1bGlwfGVufDB8fDB8fHww",width: 200,height: 200,fit: BoxFit.cover,),
          Text("Tulips are erect flowers with long, broad, parallel-veined leaves and a cup-shaped, single or double flower at the tip of the stem. Colors of the flowers can range anywhere from red to yellow to white. Some tulips are varicolored as a result of a viral disease carried and transferred to the plants by aphids.", style: TextStyle(fontWeight:FontWeight.bold),textAlign: TextAlign.center,),

        ],
      ),

    );


  }


}
