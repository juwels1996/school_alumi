import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Contact Us',
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple, Colors.orangeAccent],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              // Contact Us Header

              const SizedBox(height: 8),
              Text(
                'Connect with Us: Reach Out and Stay Linked to Your Alumni Community',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(height: 16),

              // Address Section
              const Text(
                'OUR ADDRESS',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Alumni Floor, Nabab Nawab Ali Chowdhury Senate Bhavan, University of Dhaka. Dhaka - 1000.',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Phone Numbers Section
              const Text(
                'PHONE NUMBERS',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),

              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.phone, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    '02-55167807',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.phone, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    '01306411630',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 16),

              // Email Section
              const Text(
                'EMAIL',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.mail, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    'info@duaa-bd.org',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Website Section
              const Text(
                'WEBSITE',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.link, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    'www.dmhs.com',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
