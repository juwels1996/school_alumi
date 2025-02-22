import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../widgets/responsive_screen.dart';
import 'components/alumni_schoolarship.dart';

class HomeScreenInformation extends StatelessWidget {
  HomeScreenInformation({super.key});

  List<String> imagesList = [
    'assets/images/photo1.jpg',
    'assets/images/photo2.jpg',
    'assets/images/photo3.jpg',
    'assets/images/photo5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.cyan, Colors.blueGrey],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),

              CarouselSlider(
                options: CarouselOptions(
                  height: Responsive.carouselHeight(context),
                  aspectRatio: Responsive.carouselAspectRatio(context),
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayInterval: Duration(seconds: 3),
                ),
                items: imagesList.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                item), // Use AssetImage to load asset images
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              // Padding(
              //   padding:  EdgeInsets.symmetric(horizontal: 50.0),
              //   child: Container(
              //     width: double.infinity,
              //     height: 500,
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: NetworkImage("https://media.istockphoto.com/id/530685719/photo/group-of-business-people-standing-in-hall-smiling-and-talking-together.jpg?s=612x612&w=0&k=20&c=jX61UCaRLlN_jm-prBgTqLh6SZkptzlJocO3QDQu3k4="), // Replace with your image URL
              //         fit: BoxFit.fill,
              //       ),
              //       borderRadius: BorderRadius.circular(12),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 16),

              // Our History Section
              Row(
                children: [
                  _buildInfoCard(
                    color: Colors.blue.shade800,
                    title: 'Our History – DMHS Alumni Association',
                    description:
                        'The DMHS Alumni Association was founded on October 4th, 2024, by a group of determined and resilient young individuals with a shared vision—to create a lifelong network of support, mentorship, and community impact. Their unwavering dedication laid the foundation for an alumni association that thrives on unity, excellence, and giving back.From reconnecting old friends to empowering future generations, our journey is a testament to the strength of the DMHS spirit. More than just an alumni network, we are a living legacy—built on passion, perseverance, and purpose!’',
                    context: context,
                  ),

                  const SizedBox(width: 8),

                  // About Us Section
                  _buildInfoCard(
                    color: Colors.blue.shade500,
                    title: 'About Us',
                    description:
                        'The DMHS Alumni Association is more than just a network; it’s a lifelong bond that connects past, present, and future generations of our alma mater. Rooted in tradition and driven by a shared passion for excellence, we strive to foster meaningful connections, support our fellow alumni, and give back to the institution that shaped us. Whether through mentorship, community initiatives, or reunions, we are committed to keeping the spirit of DMHS alive and thriving across the globe. Once a part of DMHS, always a part of its legacy!',
                    context: context,
                  ),

                  const SizedBox(width: 8),

                  // Past Leaders Section
                  _buildInfoCard(
                    color: Colors.green.shade500,
                    title: 'Past Leaders – DMHS Alumni Association',
                    description:
                        'Great legacies begin with great leaders. On October 4th, 2024, a group of passionate and resilient young minds came together to turn a vision into reality—laying the foundation of the DMHS Alumni Association. Their unwavering dedication, love for our alma mater, and commitment to unity built the strong community we cherish today.As we grow, we honor those who led the way, shaping a future where every DMHS alumnus stays connected, inspired, and empowered. Their legacy lives on in every step we take forward.Once DMHS, Always Family! 💙',
                    context: context,
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // News Section
              Text(
                'The Day to Day Activities of DMHS Alumni Association',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              Row(
                children: [
                  SizedBox(width: 16),
                  _buildNewsCard(context),
                  SizedBox(width: 16),
                  _buildNewsCard(context),
                ],
              ),
              SizedBox(height: 16),

              Text("Convenning Comitte Members",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                    " convenning commite means where all the person are convenning commite means where all convenning commite means where all the person areconvenning commite means where all the person areconvenning commite means where all the person are the person are convenning commite means where all the person are planning and established the high level mind game eans where all the person are planning and established the high level mind game eans where all the person are planning and established the high level mind game",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        )),
              ),

              SizedBox(height: 16),
              ScholarshipProgramPage(),
              SizedBox(height: 16),
              Text(
                'Frequently Asked Questions',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              _buildFAQTile(context, 'How Do I Apply For Membership?',
                  'Online Application is easy! Simply visit our website and follow the steps to apply for membership.'),
              _buildFAQTile(context, 'How Can I Update My Contact Information?',
                  'Log into your profile and update your contact information through your dashboard.'),
              _buildFAQTile(
                  context,
                  'What Events Are Coming Up, And How Can I Participate?',
                  'Stay up to date with our events through the Events page, where you can view upcoming events and learn how to participate.'),
              _buildFAQTile(
                  context,
                  'How Can I Contribute To The Alumni Scholarship Program?',
                  'Support the scholarship program by donating or volunteering. Reach out to us for more information.'),
              _buildFAQTile(
                  context,
                  'I Forgot My Password. How Can I Reset It?',
                  'Click on the "Forgot Password" link on the login page to reset your password.'),
              const SizedBox(height: 16),

              // Footer Section
              _buildFooter(context),
            ],
          ),
        ),
      ),
    );
  }

  // Widget to build "Our History", "About Us", "Past Leaders" cards
  Widget _buildInfoCard({
    Color? color,
    required String title,
    required String description,
    required BuildContext context,
  }) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 800),
      curve: Curves.easeInOut,
      child: Card(
        elevation: 4,
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.blue],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  ReadMoreText(
                    description,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.white),
                    trimLines: 5,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: '...Read more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    lessStyle: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget to build a single News card
  Widget _buildNewsCard(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: Responsive.isSmallScreen(context)
            ? MediaQuery.of(context).size.width * 0.42
            : MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Colors.brown, Colors.blue],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "assets/images/photo3.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error,
                        size: 100, color: Colors.grey);
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Event News', // Replace with actual news title
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 3),
                      ReadMoreText(
                        'Our first alumni association meeting was a huge success, with over 100 attendees from across the globe. We shared memories, reconnected with old friends, and discussed exciting plans for the future. Thank you to everyone who joined us for this special event!',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.white),
                        trimLines: 3,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: '...Read more',
                        trimExpandedText: ' Less',
                        moreStyle: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        lessStyle: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text("Date : 12/12/2021",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: Colors.grey,
                                  )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCards(
    BuildContext context,
    String title,
    String description,
    IconData icon,
    Color color,
  ) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 8),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

// FAQ Section with ExpansionTile
  Widget _buildFAQTile(BuildContext context, String title, String description) {
    return ExpansionTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(description,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  )),
        ),
      ],
    );
  }

// Footer with Social Media and Copyright Info
  Widget _buildFooter(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blue.shade900,
      child: Column(
        children: [
          const Text(
            '©2024 DMHS Alumni Association',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  // Add social media link functionality
                },
                icon: const Icon(Icons.facebook, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  // Add social media link functionality
                },
                icon:
                    Icon(Icons.transfer_within_a_station, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  // Add social media link functionality
                },
                icon: const Icon(Icons.whatshot, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
