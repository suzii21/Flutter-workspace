
import 'package:demo1/checkbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Check extends StatefulWidget{
  @override
  CheckState createState() => CheckState();

}
class CheckState extends State<Check> {
  bool one = false;
  bool two = false;
  bool three = false;
  bool four = false;
  var total = 0;
  var amount = 0;
  var data = "";
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("CHECK BOX"),),
     body: Center(
       child: Column(
         children: [
       CheckboxListTile(
       title: Text("French Fries"),
         subtitle: Text("Rs.100"),
         value: this.one,
         onChanged: (bool? value)
         {
           setState(() {
             this.one=value!;
             amount+=100;
             data+="\n French Fries @ Rs.100";
            });
           }
          ),
           
           CheckboxListTile(
               title: Text("Pasta"),
               subtitle: Text("Rs.100"),
               value:this.two,
               onChanged: (bool? value)
               {
                 setState(() {
                   this.two=value!;
                   amount+=100;
                   data+="\n Pasta @Rs.100";
                 });
               }
           ),
           
           CheckboxListTile(
             title: Text("Burger"),
               subtitle: Text("Rs.100"),
             value: this.three,
             onChanged: (bool? value)
             {
               setState(() {
                 this.three = value!;
                 amount+=100;
                 data+="\n Burger @Rs.100";
               });
             }
           ),

           CheckboxListTile(
               title: Text("Wraps"),
               subtitle: Text("Rs.100"),
               value: this.four,
               onChanged: (bool? value)
           {
            setState(() {
              this.four=value!;
              amount+=100;
              data+="\n Wraps @Rs.100";
            });
           }
           ),
           ElevatedButton(onPressed: ()
           {
             print("\n Bill \n $data \n Total: $amount");

           }, child: (Text("ORDER")))
         ],
       ),
     ),
   );
  }
}
