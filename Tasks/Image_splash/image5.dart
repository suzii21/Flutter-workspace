import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Image5page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Image5pagestate();
}

class Image5pagestate extends State<Image5page>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Description"),),
      body: Column(
        children: [
          Image.network("https://media.istockphoto.com/id/628712216/photo/the-blossoming-ruellia-brittoniana-flowers-closeup.jpg?s=612x612&w=0&k=20&c=4Ka6OpRsaIOaD67KF0YvDkjTOOm5pjIoUqI9-GEtGrU=",width: 200,height: 200,fit: BoxFit.cover,),
          Text("Common jasmine is a climbing shrub that can grow up to 8 metres tall. The leaves are made up of 7 to "
              "9 smaller 'leaflets', which are long, pointed and oval-shaped. The flowers are white or very pale "
              "pink, with five petals and strongly scented. The fruits are small black berrie", style: TextStyle(fontWeight:FontWeight.bold),textAlign: TextAlign.center,
              )
        ],
      ),
    );
  }
}
