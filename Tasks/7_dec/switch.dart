import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchEx extends StatefulWidget
{
  @override
  Switchh createState() => Switchh();
}
class Switchh extends State<SwitchEx>
{
  bool isactivated = false;
  var textValue = 'Switch is OFF';

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("SWITCH"),),
      body: Center(

        child: Column(

            children: [
              SizedBox(height: 20,),
              Transform.scale(scale: 2,
                child:  Switch(
                  value: isactivated,
                  onChanged: (bool value)
                  {
                    if(isactivated == false)
                    {
                      setState(() {
                        isactivated = true;
                        textValue = 'Switch Button is ON';
                      });
                      print('Switch Button is ON');
                    }
                    else
                    {
                      setState(() {
                        isactivated = false;
                        textValue = 'Switch Button is OFF';
                      });
                      print('Switch Button is OFF');
                    }
                  },
                  activeColor: Colors.pinkAccent,
                  activeTrackColor: Colors.black12,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.deepPurpleAccent,

                ),
              ),
              SizedBox(height: 20,),

              Text("$textValue",style: TextStyle(fontSize: 20))]),

      ),
    );
  }

}