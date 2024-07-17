import 'package:flutter/material.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jobs', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white), // Ensure back icon is white
      ),
      body: const Center(
        child: Text(
          'Job Listings',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
