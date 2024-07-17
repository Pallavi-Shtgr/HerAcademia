import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'login.dart';
import 'learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color.fromARGB(255, 75, 0, 130), // Set the background color to dark purple
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white),
        ),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AboutPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LearnPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Women in Education', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black, // Set AppBar color to black
      ),
      body: const Center(
        child: Text(
          'Women Education: Empowering the Future',
          style: TextStyle(fontSize: 24, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Set BottomNavigationBar color to black
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 12, 12, 12)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info, color: Color.fromARGB(255, 13, 13, 13)),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work, color: Color.fromARGB(255, 18, 17, 17)),
            label: 'Job',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Color.fromARGB(255, 7, 7, 7)),
            label: 'Learn',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        // selectedLabelStyle: const TextStyle(color: Colors.black), 
        // unselectedLabelStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}
