//Create an application with Navigation Drawer with 3 tabs Gallery,
//audio and video and design each page with dummy data

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple.shade200,
            ),
            child: Text(
              'Drawer Tabs App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Gallery'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GalleryTab()),
              );
            },
          ),
          ListTile(
            title: Text('Audio'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AudioTab()),
              );
            },
          ),
          ListTile(
            title: Text('Video'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoTab()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class GalleryItem {
  final String title;
  final String imageUrl;

  GalleryItem({required this.title, required this.imageUrl});
}

class AudioItem {
  final String title;
  final String audioUrl;

  AudioItem({required this.title, required this.audioUrl});
}

class VideoItem {
  final String title;
  final String videoUrl;

  VideoItem({required this.title, required this.videoUrl});
}

class GalleryTab extends StatelessWidget {
  final List<GalleryItem> galleryItems = [
    GalleryItem(title: 'Image 1', imageUrl: 'https://images.unsplash.com/photo-1518895949257-7621c3c786d7?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cm9zZSUyMGFlc3RoZXRpY3xlbnwwfHwwfHx8MA%3D%3D'),
    GalleryItem(title: 'Image 2', imageUrl: 'https://images.unsplash.com/photo-1589994160839-163cd867cfe8?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHR1bGlwfGVufDB8fDB8fHww'),
    // Add more dummy data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: ListView.builder(
        itemCount: galleryItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(galleryItems[index].title),
            leading: Image.network(galleryItems[index].imageUrl),
          );
        },
      ),
    );
  }
}

class AudioTab extends StatelessWidget {
  final List<AudioItem> audioItems = [
    AudioItem(title: 'Audio 1', audioUrl: 'https://open.spotify.com/track/1dGr1c8CrMLDpV6mPbImSI?si=6ddf323e80564d77'),
    AudioItem(title: 'Audio 2', audioUrl: 'https://open.spotify.com/track/0tgVpDi06FyKpA1z0VMD4v?si=4020827c22904dd2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio'),
      ),
      body: ListView.builder(
        itemCount: audioItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(audioItems[index].title),
          );
        },
      ),
    );
  }
}

class VideoTab extends StatelessWidget {
  final List<VideoItem> videoItems = [
    VideoItem(title: 'Video 1', videoUrl: 'https://youtu.be/-BjZmE2gtdo?si=x8W5FLF_BGZnN_X7'),
    VideoItem(title: 'Video 2', videoUrl: 'https://youtu.be/ZycMJWv2vtY?si=zajqbFqyNpqXXVI9'),
    // Add more dummy data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video'),
      ),
      body: ListView.builder(
        itemCount: videoItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(videoItems[index].title),
          );
        },
      ),
    );
  }
}