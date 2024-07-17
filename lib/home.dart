import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white), // Ensure back icon is white
      ),
      body: const Center(
        child: Text(
          'Welcome to the Home Page',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
