import 'package:flutter/material.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Notices'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'Important Notices',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Notice 1
              NoticeCard(
                imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_-F-ENM0ycDdoAoHJWnaicIlEnde0zQcATkF2ZeYZ2nfc0jxr_n_PL4_MyO081mc1RUk&usqp=CAU', // Placeholder image
                title: 'Alumni Reunion 2023',
                description: 'We are excited to announce the upcoming Alumni Reunion event for 2023. Please join us for an unforgettable day of connection and celebration!',
              ),
              const SizedBox(height: 16),

              // Notice 2
              NoticeCard(
                imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScRbbKgG_h1fq00asj7Mkol0uKkQhHjL42n8-INs7-Bvxvp3DpSts_UHaqZ4K1O6TDrtM&usqp=CAU', // Placeholder image
                title: 'Annual Charity Event',
                description: 'Join us for our Annual Charity Event where we help fundraise for current students and support local causes. Your participation matters!',
              ),
              const SizedBox(height: 16),

              // Notice 3
              NoticeCard(
                imageUrl: 'https://pbs.twimg.com/media/C8OKJHPUwAA5sEo.jpg', // Placeholder image
                title: 'New Scholarships Available',
                description: 'We are thrilled to announce new scholarships for current students. Apply today to benefit from these opportunities!',
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class NoticeCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const NoticeCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.error, size: 100, color: Colors.grey);
                },
              ),
            ),
            const SizedBox(width: 16),

            // Notice content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
