//16. Write a code to display alert dialog with list of cities and Single
// choice selection display selected city in TextView
import 'package:flutter/material.dart';


// class AlertPage extends StatefulWidget {
//   @override
//   AlertPageState createState() => AlertPageState();
// }
//
// class AlertPageState extends State<AlertPage> {
//   String selectedCity = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Single Choice Alert Dialog Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             _showCitySelectionDialog(context);
//           },
//           child: Text('Select City'),
//         ),
//       ),
//     );
//   }
//
//   void _showCitySelectionDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Select a City'),
//           content: Column(
//             children: [
//               _buildCityListItem('PARIS'),
//               _buildCityListItem('SEOUL'),
//               _buildCityListItem('BALI'),
//               // Add more cities as needed
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 _showSelectedCity();
//                 Navigator.of(context).pop();
//               },
//               child: Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   Widget _buildCityListItem(String cityName) {
//     return ListTile(
//       title: Text(cityName),
//       leading: Radio<String>(
//         value: cityName,
//         groupValue: selectedCity,
//         onChanged: (String? value) {
//           setState(() {
//             selectedCity = value!;
//           });
//         },
//       ),
//     );
//   }
//
//   void _showSelectedCity() {
//     if (selectedCity.isNotEmpty) {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text('Selected City'),
//             content: Text('You selected: $selectedCity'),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text('OK'),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
// }



class AlertPage extends StatefulWidget {
  @override
  AlertPageState createState() => AlertPageState();
}

class AlertPageState extends State<AlertPage> {
  String selectedCity = 'Select a City';

  List<String> cities = ['PARIS', 'SEOUL', 'BALI'];

  void _showCitySelectionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a City'),
          content: SingleChildScrollView(
            child: ListBody(
              children: cities
                  .map((city) => ListTile(
                title: Text(city),
                onTap: () {
                  setState(() {
                    selectedCity = city;
                  });
                  Navigator.pop(context);
                },
              ))
                  .toList(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected City:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              selectedCity,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showCitySelectionDialog,
              child: Text('Select City'),
            ),
          ],
        ),
      ),
    );
  }
}

