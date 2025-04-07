import 'package:flutter/material.dart';

class VerticalScreen extends StatelessWidget {
  final List<String> imageUrls = [
    'https://media.istockphoto.com/id/623430378/photo/photographer-always-catch-the-moment.jpg?s=612x612&w=is&k=20&c=mrakZuWKdvy-PY0-SA77KeQRACwhslXLSVADWcsdWJk=', // Network Image 1
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBoxr0a41nvRhQ7nBc2c14MNgdoEjIQhPQAuEo6BDWFDVN2pM6ysqUBbCpyOh7CkOfu2o&usqp=CAU', // Network Image 2
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrUb_SAqHuPx57Y-keP9dzAHNtoCo54OpRxQ&s', // Network Image 3
    'https://media.istockphoto.com/id/1047553492/photo/woman-photographer-with-red-scarf-taking-pictures-of-landscape-at-sea.jpg?s=612x612&w=is&k=20&c=Erf5pS1nS8DM3jUqpK4qdVVzIkXPnYDfgJY44UTb8Yc=', // Network Image 4
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJH-iuKaY4HfL_Kh7pAEGXB8jhtcTZBhLvXMt7Opj_v7SbQvthmULIfywfX5xLP_3WlA4&usqp=CAU', // Network Image 5
  ];

  final List<String> assetImages = [
    'assets/image1.jpg',
    'assets/image.jpg',
    'assets/image6.jpg',
    'assets/image3.jpg',
    'assets/image8.jpg',
    'assets/image9.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    // Combine both the network images and asset images into one list
    final List<String> allImages = imageUrls + assetImages;

    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterPro_Afaq"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue , Colors.cyanAccent],
              begin: Alignment.bottomLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,    // Makes the list scroll horizontally
          itemCount: allImages.length,
          itemBuilder: (context, index) {
            String image = allImages[index];
            if (image.startsWith('http')) {
              // Network Image
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.network(image),
              );
            } else {
              // Asset Image
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset(image),
              );
            }
          },
        ),
      ),
    );
  }
}
