import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'About Us',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple, Colors.blue],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Introduction
              Text(
                'Welcome to the Alumni Association',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Our alumni association is a community of graduates dedicated to fostering lifelong connections, personal growth, and giving back to the alma mater. We offer various activities, events, and programs to engage alumni and strengthen the bonds formed during our educational years.',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 16),

              // History Section
              Text(
                'Our History',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Founded in 2005, the Alumni Association was established to help connect former students of our institution and promote the value of continuing education. Over the years, we have grown significantly, with alumni chapters in various regions, engaging in community-driven events and providing scholarships for current students.',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 16),

              // Mission Section
              Text(
                'Our Mission',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'The mission of our Alumni Association is to connect, support, and inspire alumni by creating a network that fosters personal and professional growth. We aim to provide opportunities for alumni to give back to their alma mater and positively impact current and future students.',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 16),

              // Objectives Section
              Text(
                'Our Objectives',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                '1. Establish and maintain an active alumni network.\n'
                '2. Support the institution by providing scholarships and grants.\n'
                '3. Organize alumni events and reunions.\n'
                '4. Foster career development and mentorship programs.\n'
                '5. Advocate for the institution and its current students.\n',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 16),

              // Contact Information Section
            ],
          ),
        ),
      ),
    );
  }
}
