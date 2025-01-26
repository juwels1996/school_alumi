import 'package:flutter/material.dart';

class ScholarshipProgramPage extends StatelessWidget {
  const ScholarshipProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildScholarshipCard(context),
            ],
          ),
        ),
      );
  }

  // Widget to build the scholarship program card
  Widget _buildScholarshipCard(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            Text(
              'Alumni Association Scholarship Program',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Description
            Text(
              'The Alumni Association offers a scholarship program to support current students in need of financial assistance. Our goal is to empower deserving students to continue their studies and contribute to the community.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            // Eligibility Section
            _buildSectionTitle(context, 'Eligibility Criteria'),
            const SizedBox(height: 8),
            Text(
              '1. Must be an active student of the university.\n'
                  '2. Must have a minimum GPA of 3.5.\n'
                  '3. Must demonstrate financial need.\n'
                  '4. Must be involved in extracurricular activities.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            // Benefits Section
            _buildSectionTitle(context, 'Benefits'),
            const SizedBox(height: 8),
            Text(
              '1. Financial support to cover tuition fees.\n'
                  '2. Recognition at the annual alumni event.\n'
                  '3. Networking opportunities with alumni professionals.\n'
                  '4. Mentorship and career development support.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            // Application Process Section
            _buildSectionTitle(context, 'Application Process'),
            const SizedBox(height: 8),
            Text(
              '1. Fill out the scholarship application form.\n'
                  '2. Submit your latest academic transcript.\n'
                  '3. Write a personal statement (500 words).\n'
                  '4. Provide two letters of recommendation.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            // Deadline Section
            _buildSectionTitle(context, 'Application Deadline'),
            const SizedBox(height: 8),
            Text(
              'The deadline for applications is December 31st, 2025. Late applications will not be accepted.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),

            // Contact Section
            _buildSectionTitle(context, 'Contact Information'),
            const SizedBox(height: 8),
            Text(
              'For more information or inquiries, please contact the Scholarship Committee:\n\n'
                  'Email: scholarship@alumni.org\n'
                  'Phone: (123) 456-7890\n'
                  'Address: 123 Alumni Street, University Campus, City',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),

            // Apply Now Button
            ElevatedButton(
              onPressed: () {
                // Add navigation or other functionality
                // Example: Navigate to an application form
              },
              child: const Text('Apply Now'),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to create section titles
  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
