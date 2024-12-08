import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// A simple model class to hold user data
class UserProfile {
  final String name;
  final int age;
  final String address;
  final String sscBatch;
  final String profileImage;

  UserProfile({
    required this.name,
    required this.age,
    required this.address,
    required this.sscBatch,
    required this.profileImage,
  });
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SchoolProfilePage(),
    );
  }
}

class SchoolProfilePage extends StatefulWidget {
  const SchoolProfilePage({super.key});

  @override
  State<SchoolProfilePage> createState() => _SchoolProfilePageState();
}

class _SchoolProfilePageState extends State<SchoolProfilePage> {
  @override
  Widget build(BuildContext context) {
    // Sample data
    List<UserProfile> users = [
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2020',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'Jane Smith',
        age: 23,
        address: '456 Elm Street, Dhaka, Bangladesh',
        sscBatch: '2019',
        profileImage:
            'https://t4.ftcdn.net/jpg/06/63/17/45/360_F_663174509_cI98mWznXts28zFrfrIenJlpxZQutWA0.jpg',
      ),
      UserProfile(
        name: 'Michael Lee',
        age: 26,
        address: '789 Oak Street, Dhaka, Bangladesh',
        sscBatch: '2018',
        profileImage:
            'https://www.shutterstock.com/image-photo/profile-picture-smiling-young-african-260nw-1873784920.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2017',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2016',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2015',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2014',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2013',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2012',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2011',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2012',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2010',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2009',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2008',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2007',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2007',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2005',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2004',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
      UserProfile(
        name: 'John Doe',
        age: 25,
        address: '123 Main Street, Dhaka, Bangladesh',
        sscBatch: '2003',
        profileImage:
            'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg',
      ),
    ];

    // List of school images for the carousel
    final List<String> schoolImages = [
      'https://www.shutterstock.com/image-vector/back-school-cartoon-vector-kids-260nw-2493305457.jpg',
      'https://media.gettyimages.com/id/171306436/photo/red-brick-high-school-building-exterior.jpg?s=612x612&w=gi&k=20&c=8to_zwGxxcI1iYcix7DhmWahoDTlaqxEMzumDwJtxeg=',
      'https://live-production.wcms.abc-cdn.net.au/b98369f89cb89b68c20338a60d647698?impolicy=wcms_crop_resize&cropH=3881&cropW=6900&xPos=0&yPos=189&width=862&height=485',
    ];
    List<String> batches = [
      'All',
      '2019',
      '2020',
      '2021',
      '2019',
      '2018',
      '2017',
      '2016',
      '2015',
      '2014',
      '2013',
      '2012',
      '2011',
    ];
    String selectedBatch = 'All';

    void _sortUsersByBatch(String batch) {
      setState(() {
        if (batch == 'All') {
          // Sort by batch if 'All' is selected
          users.sort((a, b) => a.sscBatch.compareTo(b.sscBatch));
        } else {
          // Filter by batch if a specific batch is selected
          users = users
              .where((user) => user.sscBatch == batch)
              .toList(); // Only keep users in selected batch
        }
      });
    }


    return Scaffold(
      appBar: AppBar(
        title: const Text('School Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel at the top with school images
            CarouselSlider(
              items: schoolImages
                  .map((image) => Image.network(image, fit: BoxFit.cover))
                  .toList(),
              options: CarouselOptions(
                height: 300,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),

            // School Program Notice Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: const [
                      Text(
                        'School Program Notice',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'We are excited to announce the upcoming school program! Join us for the annual sports day event. Date: 25th December 2024.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Dropdown for sorting by SSC Batch
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: DropdownButton<String>(
                  value: selectedBatch,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  isExpanded: true,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedBatch = newValue!;
                    });
                    _sortUsersByBatch(selectedBatch);
                  },
                  items: batches.map<DropdownMenuItem<String>>((String batch) {
                    return DropdownMenuItem<String>(
                      value: batch,
                      child: Text(batch),
                    );
                  }).toList(),
                )),

            // User Profile GridView.builder
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                // Set the grid's size based on the screen size
                shrinkWrap: true, // Make it fit the screen
                physics:
                    const NeverScrollableScrollPhysics(), // Disable scrolling
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns in the grid
                  crossAxisSpacing: 16.0, // Horizontal spacing between items
                  mainAxisSpacing: 16.0, // Vertical spacing between items
                  childAspectRatio: 1.8, // Aspect ratio of each card
                ),
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return _buildUserProfile(users[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserProfile(UserProfile user) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(user.profileImage),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Age: ${user.age}',
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  'Address: ${user.address}',
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  'SSC Batch: ${user.sscBatch}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
