import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'components/alumni_schoolarship.dart';

class HomeScreenInformation extends StatelessWidget {
  HomeScreenInformation({super.key});

  List<String> imagesList = [
    'https://media.istockphoto.com/id/530685719/photo/group-of-business-people-standing-in-hall-smiling-and-talking-together.jpg?s=612x612&w=0&k=20&c=jX61UCaRLlN_jm-prBgTqLh6SZkptzlJocO3QDQu3k4=',
    'https://thumbs.dreamstime.com/b/delegates-networking-conference-drinks-reception-79847575.jpg',
    'https://media.istockphoto.com/id/513439341/photo/portrait-of-enthusiastic-business-people-in-circle.jpg?s=612x612&w=0&k=20&c=oxwsq8WGFT0ixmSojntYBEZqifne4P7DlqOWbXCqWUk=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),

              CarouselSlider(
                options: CarouselOptions(
                  height: 500.0,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayInterval: Duration(seconds: 3),
                ),
                items: imagesList.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: double.infinity,
                        height: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                item), // Replace with your image URL
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
                    title: 'Our History',
                    description:
                        'যুক্তরাষ্ট্রের নবনির্বাচিত প্রেসিডেন্ট ডোনাল্ড ট্রাম্প বলেছে, হোয়াইট হাউস ত্যাগের আগে নিজেকে ক্ষমা না করে সদ্য সাবেক প্রেসিডেন্ট জো বাইডেন ভুল করেছেন। স্থানীয় সময় বুধবার রাতে ফক্স নিউজকে দেওয়া এক সাক্ষাৎকারে ট্রাম্প এই মন্তব্য করেছেন। যুক্তরাষ্ট্রের প্রেসিডেন্ট হিসেবে দ্বিতীয়বার ক্ষমতা গ্রহণের পর কোনো গণমাধ্যমকে দেওয়া এটাই তাঁর প্রথম সাক্ষাৎকার।ফক্স নিউজের উপস্থাপক শন হ্যানিটিকে দেওয়া সাক্ষাৎকারে ট্রাম্প বলেছেন, ‘এই ব্যক্তি (বাইডেন) সবাইকে আগাম ক্ষমা করে গেছেন। মজার বিষয় হলো, সম্ভবত (তাঁর জন্য) দুর্ভাগ্যজনকও, তিনি নিজেকে ক্ষমা করে যাননি।’',
                    context: context,
                  ),

                  const SizedBox(width: 15),

                  // About Us Section
                  _buildInfoCard(
                    color: Colors.blue.shade500,
                    title: 'About Us',
                    description:
                        'At Dhaka University Alumni Association, we believe that the journey doesn’t end at graduation; instead, it marks the beginning of an enduring relationship with our alma mater and fellow alumni.',
                    context: context,
                  ),

                  const SizedBox(width: 15),

                  // Past Leaders Section
                  _buildInfoCard(
                    color: Colors.green.shade500,
                    title: 'Past Leaders',
                    description:
                        'Alumni associations play a pivotal role in fostering connections among graduates, maintaining ties with educational institutions, and contributing to the continued success of their alma mater.',
                    context: context,
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // News Section
              Text(
                'The Day to Day Activities of Dhaka University Alumni Association',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              Row(
                children: [
                  SizedBox(width: 16),
                  _buildNewsCard(context),
                  SizedBox(width: 16),
                  _buildNewsCard(context),
                  SizedBox(width: 16),
                  _buildNewsCard(context),
                ],
              ),
              SizedBox(height: 16),

              Text("Convenning Comitte Members",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                    " convenning commite means where all the person are convenning commite means where all convenning commite means where all the person areconvenning commite means where all the person areconvenning commite means where all the person are the person are convenning commite means where all the person are planning and established the high level mind game eans where all the person are planning and established the high level mind game eans where all the person are planning and established the high level mind game",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        )),
              ),

              SizedBox(height: 16),
              ScholarshipProgramPage(),
              SizedBox(height: 16),
              Text(
                'Frequently Asked Questions',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.white),
                  maxLines: 5,
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {
                    // Add navigation or additional logic here
                  },
                  child: Text(
                    'Details>>',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ],
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
        width: MediaQuery.of(context).size.width * 0.25,
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
                child: Image.network(
                  "https://media.gettyimages.com/id/1366475343/photo/abstract-program-code-on-the-digital-display.jpg?s=612x612&w=gi&k=20&c=Y8ojtnko01KU70zhHBXmhqqWzD11EznApTd0OHYlFd4=", // Replace with your news image URL
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'News Title', // Replace with actual news title
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'প্রধান উপদেষ্টা অধ্যাপক মুহাম্মদ ইউনূস বলেছেন, ছাত্র–জনতার অভ্যুত্থানে ক্ষমতাচ্যুত শেখ হাসিনা সরকারের সময় দেশের অর্থনীতির উচ্চ প্রবৃদ্ধি নিয়ে যা বলা হতো, তা ছিল ‘জালিয়াতি’। শেখ হাসিনা দাবি করেছিলেন প্রবৃদ্ধিতে সবাইকে ছাড়িয়ে গেছে বাংলাদেশ। হাসিনা সরকারের দুর্নীতি নিয়ে প্রশ্ন না তোলায় আন্তর্জাতিক সম্প্রদায়ের ভূমিকা নিয়েও সমালোচনা করেন তিনি।বৃহস্পতিবার বার্তা সংস্থা রয়টার্সকে দেওয়া সাক্ষাৎকারে অধ্যাপক ইউনূস এসব কথা বলেন। একই সাক্ষাৎকারে তিনি বলেন, নির্বাচনে প্রতিদ্বন্দ্বিতা করার কোনো আগ্রহ তাঁর নেই।Brief description of the news goes here. This could be a short preview or an intro to the full article.',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                      maxLines: 6,
                    ),
                    const SizedBox(height: 6),
                    Text("Date : 12/12/2021",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Colors.grey,
                            )),
                  ],
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
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Text(description, style: Theme.of(context).textTheme.bodyMedium),
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
