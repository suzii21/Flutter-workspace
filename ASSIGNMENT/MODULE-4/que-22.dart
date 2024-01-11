// Create an application with bottom navigation with 3 tabs Gallery,
// audio and video and design each page with dummy data

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  @override
  BottomPageState createState() => BottomPageState();
}

class BottomPageState extends State<BottomPage> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    GalleryPage(),
    AudioPage(),
    VideoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.audiotrack),
            label: 'Audio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            label: 'Video',
          ),
        ],
      ),
    );
  }
}

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Gallery Page'),
    );
  }
}

class AudioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Audio Page'),
    );
  }
}

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Video Page'),
    );
  }
}