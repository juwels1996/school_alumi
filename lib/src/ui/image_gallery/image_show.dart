import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ImageGalleryPage extends StatelessWidget {
  const ImageGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample image URLs
    final images = <String>[
      'assets/images/photo1.jpg',
      'assets/images/photo2.jpg',
      'assets/images/photo3.jpg',
      // Add more image URLs...
    ];

    // Check screen width
    final screenWidth = MediaQuery.of(context).size.width;

    // If width < 600 => small screen => 2 columns, else => 3 columns
    final crossAxisCount = screenWidth < 600 ? 2 : 3;

    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Gallery',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          // Grid layout depends on crossAxisCount
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            // Adjust as desired for image shape:
            childAspectRatio: 1.5,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8.0), // rounded corners
              child: Image.asset(
                images[index],
                fit: BoxFit.cover, // fill the grid cell
              ),
            );
          },
        ),
      ),
    );
  }
}
