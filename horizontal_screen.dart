import 'package:flutter/material.dart';

class HorizontalScreen extends StatelessWidget {

  final List<String> assetImages = [
    'assets/image.jpg',
    'assets/release.jpg',
    'assets/image4.jpg',
    'assets/image1.jpg',
    'assets/image8.jpg',
    'assets/image3.jpg',
    'assets/image6.jpg',
    'assets/image9.jpg',

  ];

  final List<String> imageUrls = [
    'https://media.istockphoto.com/id/623430378/photo/photographer-always-catch-the-moment.jpg?s=612x612&w=is&k=20&c=mrakZuWKdvy-PY0-SA77KeQRACwhslXLSVADWcsdWJk=', // Network Image 1
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyXjnu4EaqabglzZbkB3YjuP73LmAvbu7otw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1THUJeLJ963roasAUHKNB_jaLkRaB80mBZA&s',
    'https://media.istockphoto.com/id/1047553492/photo/woman-photographer-with-red-scarf-taking-pictures-of-landscape-at-sea.jpg?s=612x612&w=is&k=20&c=Erf5pS1nS8DM3jUqpK4qdVVzIkXPnYDfgJY44UTb8Yc=', // Netwo
    'https://webupon.com/wp-content/uploads/2024/03/pexels-andrea-piacquadio-3771079-1024x673.jpg',
  ];



  @override
  Widget build(BuildContext context) {
    // Combine both the network images and asset images into one list
    final List<String> allImages =  assetImages + imageUrls ;

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
      body: ListView.builder(
        scrollDirection: Axis.horizontal, // Makes the list scroll horizontally
        itemCount: allImages.length,
        itemBuilder: (context, index) {
          String image = allImages[index];
          if (image.startsWith('http')) {
            // Network Image
            return Container(
              margin: const EdgeInsets.only(right: 8.0), // Minimal gap between images
              child: Image.network(
                image,fit:BoxFit.contain
              ),
            );
          } else {
            // Asset Image
            return Container(
              margin: const EdgeInsets.only(right: 8.0), // Minimal gap between images
              child: Image.asset(
                image, fit:BoxFit.contain
              ),
            );
          }
        },
      ),
    );
  }
}