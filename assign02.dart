import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile UI',
      home: const ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_picture.jpg'), // Use placeholder
              ),
              const SizedBox(height: 16),
              const Text(
                'Shiven Upadhyay',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Software Engineer',
                style: TextStyle(color: Colors.blueGrey),
              ),
              const Text(
                'Agra,UP',
                style: TextStyle(color: Colors.blueGrey),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Skills', style: Theme.of(context).textTheme.titleMedium),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  SkillChip(label: 'UI/UX Design'),
                  SkillChip(label: 'User Research'),
                  SkillChip(label: 'Prototyping'),
                  SkillChip(label: 'Design Systems'),
                  SkillChip(label: 'Interaction Design'),
                ],
              ),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('About', style: Theme.of(context).textTheme.titleMedium),
              ),
              const SizedBox(height: 10),
              const Text(
                "Akanksha is a product designer with over 5 years of experience in creating user-centered designs. "
                    "He specializes in UI/UX design, user research, and prototyping. Ethan is passionate about solving complex problems "
                    "and creating intuitive and engaging user experiences.",
                style: TextStyle(color: Colors.black87),
              ),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Contact', style: Theme.of(context).textTheme.titleMedium),
              ),
              const SizedBox(height: 10),
              const ContactTile(icon: Icons.email, text: 'Shiven.upadhyay_cs23@gla.ac.in'),
              const ContactTile(icon: Icons.phone, text: '8534984833'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: const Color(0xFFE0E7FF),
    );
  }
}

class ContactTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactTile({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey[700]),
          const SizedBox(width: 10),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}