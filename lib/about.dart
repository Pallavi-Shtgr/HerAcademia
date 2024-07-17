import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white), // Ensure back icon is white
      ),
      body: const Center(
        child: Text(
          'About Women Education',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
