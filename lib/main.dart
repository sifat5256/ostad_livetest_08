import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageFeed(),
    );
  }
}

class ImageFeed extends StatelessWidget {
  final List<String> imageUrls = [
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
  ];

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('Image Feed'),
      ),
      body: GridView.builder(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait) ? 1 : 2,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) {

          return Container(
            // height: 150,
            // width: 150,
              child: ImageCard(imageUrl: imageUrls[index]));
        },
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imageUrl;

  ImageCard({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        // height: 250,
        // width: 150,
        padding: EdgeInsets.all(8.0),
        child: Center(child: Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg', width: 150, height: 150)),
      ),
    );}
}