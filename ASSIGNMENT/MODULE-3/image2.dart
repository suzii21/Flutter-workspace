import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Image2page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Image2pagestate();

}

class Image2pagestate  extends State<Image2page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Description"),),
      body: Column(
        children: [
          Image.network("https://images.pexels.com/photos/10857540/pexels-photo-10857540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",width: 200,height: 200,fit: BoxFit.cover,),
          Text("The lotus flower is an aquatic perennial. Sometimes mistaken for the water-lily, the lotus has a distinctively different structure. It also only comes in pink hues or white, whereas the lily comes in many different colors. The roots are implanted in the soil of a river or pond, and the leaves float on the surface.", style: TextStyle(fontWeight:FontWeight.bold),textAlign: TextAlign.center,),

        ],
      ),

    );


  }


}
