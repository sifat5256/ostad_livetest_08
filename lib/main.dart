import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Feed'),
        ),
        body: ImageFeed(),
      ),
    );
  }
}

class ImageFeed extends StatelessWidget {
  final List<String> imageUrls = [
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',


  ];

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return orientation == Orientation.portrait
        ? ListView.builder(
      itemCount: imageUrls.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Container(
            height: 150,
            width: 150,
            child: Center(child: Image.network(imageUrls[index],height: 150,width: 150,)),
          ),
        );
      },
    )
        : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              height: 150,
              width: 150,
              child: Center(child: Image.network(imageUrls[index],height: 150,width: 150,)),
            ),
          );
          },
        );
  }
}