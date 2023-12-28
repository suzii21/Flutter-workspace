// 58. Write a program you have taken three seek bar controls. From three
// Seekbar which Seekbar value changed the background color of device
// will be changed.

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double slideValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: slideValue == 20?Colors.pink.shade200:slideValue == 40?Colors.purple.shade200:
      slideValue == 60?Colors.purpleAccent.shade400:slideValue == 80?Colors.pinkAccent.shade200:slideValue == 100?Colors.teal:Colors.pinkAccent.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          Text("Select to Change Color on Slider",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Slider(
              value: slideValue,
              max: 100,
              label: slideValue == 20?"lightpink":slideValue == 40?"lightpurple": slideValue == 60?"purpleAccent":slideValue == 80?"pinkAccent":slideValue == 100?"teal":"pink",
              thumbColor: Colors.white,
              activeColor: Colors.black26,
              inactiveColor: Colors.white,
              divisions: 5,
              onChanged: (value){
                setState(() {
                  slideValue = value;
                  print("slideValue => $slideValue.");
                });
              }),
        ],
      ),
    );
  }
}
