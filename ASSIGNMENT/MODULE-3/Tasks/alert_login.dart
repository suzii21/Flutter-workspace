// import 'package:flutter/material.dart';
// import 'package:application/alert_login.dart';
//
// class Alertlogin extends StatefulWidget
// {
//   @override
//   AlertloginState createState() => AlertloginState();
// }
// class AlertloginState extends State<Alertlogin>
// {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('LOGIN'),
//       ),
//       body: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center,
//           ),
//       ),
//     );
//   }
//
//   void showLoginDialog(BuildContext context) async {
//     TextEditingController usernameController = TextEditingController();
//     TextEditingController passwordController = TextEditingController();
//
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('LOGIN'),
//           content: Column(
//             children: [
//               TextField(
//                 controller: usernameController,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                     borderSide: BorderSide(color: Colors.black12),
//                   ),
//                   labelText: "Enter  your Name",
//                   prefixIcon: Icon(Icons.person),
//                 ),
//               ),
//
//               SizedBox(
//                 height: 25,
//               ),
//               TextField(
//                 controller: passwordController,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                     borderSide: BorderSide(color: Colors.black12),
//                   ),
//                   labelText: "Enter  your Password",
//                   prefixIcon: Icon(Icons.person),
//                 ),
//               ),
//             ],
//           ),
//           actions: [
//                    if (password == '12345') {
//                   Navigator.of(context).pop(); // Close the dialog
//                   _showSuccessDialog(context, username);
//                 } else {
//                   print("Login failed,Please check your password");
//                 }
//               },
//               child: Text('LOGIN'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void _showSuccessDialog(BuildContext context, String username)
//   {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Login Successful'),
//           content: Text('WELCOME, $username'),
//           actions: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Alertlogin(),),);// Close the success dialog
//               },
//               child: Text('Next'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
