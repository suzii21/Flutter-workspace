// Write a program to show four images around Textview

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imageGallery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Image Gallery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://nestasia.in/cdn/shop/products/DSC03418_1b5b6685-17f8-476c-a3fd-a197728d6859.jpg?v=1692594165',
                  width: 200,
                  height: 200,
                ),
                SizedBox(width: 20),
                Image.network(
                  'https://images.unsplash.com/photo-1589994160839-163cd867cfe8?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHVsaXAlMjBib3VxdWV0fGVufDB8fDB8fHww',
                  width: 200,
                  height: 200,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'IMAGE GALLERY',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://nestasia.in/cdn/shop/products/DSC03418_1b5b6685-17f8-476c-a3fd-a197728d6859.jpg?v=1692594165',
                  width: 200,
                  height: 200,
                ),
                SizedBox(width: 20),
                Image.network(
                  'https://images.unsplash.com/photo-1589994160839-163cd867cfe8?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHVsaXAlMjBib3VxdWV0fGVufDB8fDB8fHww',
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
