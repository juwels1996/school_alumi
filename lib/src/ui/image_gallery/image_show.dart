import 'package:flutter/material.dart';

class ImageGalleryPage extends StatelessWidget {
  const ImageGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample image URLs
    List<String> images = [
      'assets/images/photo1.jpg',
      'assets/images/photo2.jpg',
      'assets/images/photo3.jpg',
      'assets/images/photo5.jpg',
      // Add more image URLs here
    ];

    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Gallery',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 items per row
            crossAxisSpacing: 8.0, // Horizontal space between items
            mainAxisSpacing: 8.0, // Vertical space between items
            childAspectRatio: 1.5, // Aspect ratio for images (square)
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius:
                  BorderRadius.circular(8.0), // Rounded corners for images
              child: Image.asset(
                images[index], // Replace with your image URLs
                fit: BoxFit
                    .cover, // Ensures the image covers the available space
              ),
            );
          },
        ),
      ),
    );
  }
}
