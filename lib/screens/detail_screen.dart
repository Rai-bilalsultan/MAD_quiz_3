import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String courseTitle;
  final String courseSubtitle;
  final String courseDescription;

  const DetailScreen({
    super.key,
    required this.courseTitle,
    required this.courseSubtitle,
    required this.courseDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/flutter_logo.png',
              height: 150,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Text(
              courseTitle,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              courseSubtitle,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              courseDescription,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}