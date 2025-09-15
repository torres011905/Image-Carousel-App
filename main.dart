import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());


}
class MyApp extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'My Image Carousel App',
      theme: ThemeData (
        primarySwatch: Colors.blue,
    ),
    home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List imageUrls = [
    'https://picsum.photos/400/300?random=1',
    'https://picsum.photos/400/300?random=2',
    'https://picsum.photos/400/300?random=3',
    'https://picsum.photos/400/300?random=4',
    'https://picsum.photos/400/300?random=5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text ('My Photo Gallery'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
          children: [
            Container (
              height:300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Container (
                    child: ClipRRect (
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network (
                        imageUrls [index],
                        width: 400,
                        height: 300,
                        fit: BoxFit.cover,


                      ),
                    ),
                  );
                }
              ),
            ),

           Padding(padding : EdgeInsets.all(16.0),
           child: Column (
    children: [
      Text('Image Gallery',
    style: TextStyle (
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    ),
    ),

    SizedBox(height: 8),
    Text ('Swipe left to explore the amazing photos. These Amazing photos.',
    style: TextStyle (
    fontSize: 16,
    color: Colors.grey [600],
    ),
    textAlign: TextAlign.center,
    ),
    ]
    ),
           ),
      ],
    ),
    );
  }
}