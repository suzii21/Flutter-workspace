
import 'package:demo1/images_splash/image1.dart';
import 'package:demo1/images_splash/image2.dart';
import 'package:demo1/images_splash/image3.dart';
import 'package:demo1/images_splash/image4.dart';
import 'package:demo1/images_splash/image5.dart';
import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Images"),),
        body:Center(
          child: SingleChildScrollView(
            child: Column(
              children:[
                 SizedBox(height: 10,),Text("ROSE"),SizedBox(height: 20,),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> Image1page()));
                },child: Image.network("https://images.unsplash.com/photo-1518895949257-7621c3c786d7?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cm9zZSUyMGFlc3RoZXRpY3xlbnwwfHwwfHx8MA%3D%3D",width: 100,height: 100,fit: BoxFit.cover,), ),

            SizedBox(height: 10,),Text("LOTUS"),SizedBox(height: 20,),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> Image2page()));
            },child:Image.network("https://images.pexels.com/photos/10857540/pexels-photo-10857540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",width: 100,height: 100,fit: BoxFit.cover,),),

            SizedBox(height: 10,),Text("TULIP"),SizedBox(height: 20,),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> Image3page()));
            },child: Image.network("https://images.unsplash.com/photo-1589994160839-163cd867cfe8?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHR1bGlwfGVufDB8fDB8fHww",width: 100,height: 100,fit: BoxFit.cover,),),

            SizedBox(height: 10,),Text("LILY"),SizedBox(height: 20,),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> Image4page()));
            },child:Image.network("https://images.unsplash.com/photo-1501973931234-5ac2964cd94a?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGlseXxlbnwwfHwwfHx8MA%3D%3D",width: 100,height: 100,fit: BoxFit.cover,),),

            SizedBox(height: 10,),Text("JASMINE"),SizedBox(height: 20,),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> Image5page()));
            },child:Image.network("https://media.istockphoto.com/id/628712216/photo/the-blossoming-ruellia-brittoniana-flowers-closeup.jpg?s=612x612&w=0&k=20&c=4Ka6OpRsaIOaD67KF0YvDkjTOOm5pjIoUqI9-GEtGrU=",width: 100,height: 100,fit: BoxFit.cover,),),

                // ElevatedButton(onPressed:(){
                // // Navigator.of(context).pop();
                // Navigator.push(context,MaterialPageRoute(builder: (context)=> (),));

                ],
            ),
          ),
        )
    );
  }

}