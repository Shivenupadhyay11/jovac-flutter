import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Card',
      home: const ContactCard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30), // Padding from top
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assest/profile.jpeg'), // your asset
            ),
            const SizedBox(height: 10), // 10 unit spacing
            const Text(
              'shiven upadhyay',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Software Engineer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('8534984833'),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text('shiven.upadhyay@gla.ac.in'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}