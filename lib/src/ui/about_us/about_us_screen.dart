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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Introduction
                Text(
                  '🌟 Welcome to the DMHS Alumni Association! 🌟',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  "The DMHS Alumni Association is more than just a network; it’s a lifelong bond that connects past, present, and future generations of our alma mater. Rooted in tradition and driven by a shared passion for excellence, we strive to foster meaningful connections, support our fellow alumni, and give back to the institution that shaped us. Whether through mentorship, community initiatives, or reunions, we are committed to keeping the spirit of DMHS alive and thriving across the globe. Once a part of DMHS, always a part of its legacy!",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
                const SizedBox(height: 16),

                // History Section
                Text(
                  'Our History – DMHS Alumni Association',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  "The DMHS Alumni Association was founded on October 4th, 2024, by a group of determined and resilient young individuals with a shared vision—to create a lifelong network of support, mentorship, and community impact. Their unwavering dedication laid the foundation for an alumni association that thrives on unity, excellence, and giving back.From reconnecting old friends to empowering future generations, our journey is a testament to the strength of the DMHS spirit. More than just an alumni network, we are a living legacy—built on passion, perseverance, and purpose!",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
                const SizedBox(height: 16),

                // Mission Section
                Text(
                  'Mission & Vision – DMHS Alumni Association',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  '🌟 Mission:',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 3),
                Text(
                  'To foster a strong, engaged, and supportive network of DMHS alumni by creating opportunities for mentorship, collaboration, and community service. We are committed to preserving our shared heritage, empowering future generations, and giving back to our alma mater through meaningful initiatives that drive personal and professional growth.',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),

                Text(
                  '🚀 Vision:',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 3),
                Text(
                  'To build a global community of DMHS alumni that thrives on lifelong connections, inspires leadership, and upholds the values of excellence, integrity, and service. We envision an alumni network that not only cherishes its past but also actively shapes the future—strengthening bonds, creating impact, and keeping the DMHS spirit alive across generations.',
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
      ),
    );
  }
}
