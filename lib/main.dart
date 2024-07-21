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
      title: 'HerAcademeia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(159, 29, 5, 107)),
        scaffoldBackgroundColor: Color.fromARGB(159, 29, 5, 107), // Set the background color to dark purple
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 20, 20, 20)),
          titleTextStyle: TextStyle(color: Color.fromARGB(255, 5, 5, 5)),
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
          MaterialPageRoute(builder: (context) => const LearnPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HerAcademeia', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black, // Set AppBar color to black
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Women Education: Empowering the Future',
              style: TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/download.jpeg',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          textTheme: Theme.of(context).textTheme.copyWith(
                bodySmall: const TextStyle(color: Colors.black),
              ),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 244, 238, 238), // Set BottomNavigationBar color
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
              icon: Icon(Icons.school, color: Color.fromARGB(255, 7, 7, 7)), // Changed icon to match Learn page
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work, color: Color.fromARGB(255, 18, 17, 17)), // Moved to the last
              label: 'Job',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
          unselectedItemColor: const Color.fromARGB(255, 9, 9, 9),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
