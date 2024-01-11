// Write a code to display profile and logout option in options menu

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple.shade200,
        title: Text("Login",style: TextStyle(color: Colors.white),),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              // PopupMenuItem 1
              PopupMenuItem(
                value: 1,
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Log out")
                  ],
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Row(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Profile")
                  ],
                ),
              ),
            ],
            offset: Offset(-30, 20),
            color: Colors.white,
            elevation: 2,
            onSelected: (value) {
              if (value == 1) {
                logout();
              } else if (value == 2) {
                setState(() {
                  logout(profile: true);
                });
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
              ),
              SizedBox(height: 20,),
              CustomText(
                  title: "Name",
                  text: "Suzan"
              ),
              SizedBox(height: 10,),

              CustomText(
                  title: "Email",
                  text: "suzan@gmail.com"
              ),
              SizedBox(height: 10,),
              CustomText(
                  title: "Contact",
                  text: "+91"
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade200,
                    ),
                    onPressed: (){
                      logout();
                    }, child: Text("Logout",style: TextStyle(color: Colors.white),)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget CustomText({Widget? icon,String title = "",String text = "",double width = double.infinity}){
    return Container(
      width: width,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.black,
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          Text("${title} : ${text}",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }

  logout({bool profile = false}){
    showDialog(context: context, builder: (context){
      return profile == false?AlertDialog(
        title: Text("Are sure want logout?",textAlign: TextAlign.center),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("Yes",style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple.shade200,
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade200,
              ),
              onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("No",style: TextStyle(color: Colors.white),))
        ],
      ):AlertDialog(
        title: Text("You are already on profile page",textAlign: TextAlign.center),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade200,

              ),
              onPressed: (){
                Navigator.of(context).pop();
                setState(() {
                  profile = true;
                });
              }, child: Text("Ok",style: TextStyle(color: Colors.white),))
        ],
      );
    });
  }
}