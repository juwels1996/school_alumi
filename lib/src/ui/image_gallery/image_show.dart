import 'package:flutter/material.dart';

class ImageGalleryPage extends StatelessWidget {
  const ImageGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample image URLs
    List<String> images = [
      'https://media.istockphoto.com/id/530685719/photo/group-of-business-people-standing-in-hall-smiling-and-talking-together.jpg?s=612x612&w=0&k=20&c=jX61UCaRLlN_jm-prBgTqLh6SZkptzlJocO3QDQu3k4=',
      'https://thumbs.dreamstime.com/b/delegates-networking-conference-drinks-reception-79847575.jpg',
      'https://media.istockphoto.com/id/513439341/photo/portrait-of-enthusiastic-business-people-in-circle.jpg?s=612x612&w=0&k=20&c=oxwsq8WGFT0ixmSojntYBEZqifne4P7DlqOWbXCqWUk=',
      'https://media.istockphoto.com/id/513439341/photo/portrait-of-enthusiastic-business-people-in-circle.jpg?s=612x612&w=0&k=20&c=oxwsq8WGFT0ixmSojntYBEZqifne4P7DlqOWbXCqWUk=',
      'https://media.istockphoto.com/id/513439341/photo/portrait-of-enthusiastic-business-people-in-circle.jpg?s=612x612&w=0&k=20&c=oxwsq8WGFT0ixmSojntYBEZqifne4P7DlqOWbXCqWUk=',
      'https://media.istockphoto.com/id/513439341/photo/portrait-of-enthusiastic-business-people-in-circle.jpg?s=612x612&w=0&k=20&c=oxwsq8WGFT0ixmSojntYBEZqifne4P7DlqOWbXCqWUk=',
      'https://media.istockphoto.com/id/513439341/photo/portrait-of-enthusiastic-business-people-in-circle.jpg?s=612x612&w=0&k=20&c=oxwsq8WGFT0ixmSojntYBEZqifne4P7DlqOWbXCqWUk=',
      'https://media.istockphoto.com/id/513439341/photo/portrait-of-enthusiastic-business-people-in-circle.jpg?s=612x612&w=0&k=20&c=oxwsq8WGFT0ixmSojntYBEZqifne4P7DlqOWbXCqWUk=',
      'https://media.istockphoto.com/id/513439341/photo/portrait-of-enthusiastic-business-people-in-circle.jpg?s=612x612&w=0&k=20&c=oxwsq8WGFT0ixmSojntYBEZqifne4P7DlqOWbXCqWUk=',
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
              child: Image.network(
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
