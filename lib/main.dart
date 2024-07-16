import 'package:flutter/material.dart';

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
        scaffoldBackgroundColor: const Color.fromARGB(255, 224, 219, 219), // Set the background color to a light grey
        useMaterial3: true,
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
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job App', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black, // Set AppBar color to black
      ),
      body: Center(
        child: _selectedIndex == 0
            ? const Text('Welcome to Job App', style: TextStyle(color: Colors.black))
            : const Text(
                'Please select a section from the navigation bar',
                style: TextStyle(color: Colors.black),
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple, // Set BottomNavigationBar color to deep purple
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work, color: Colors.white),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.white),
            label: 'Study',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Women Education', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Importance of Women Education',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 16),
              const Text(
                'Education is a vital tool that empowers women to achieve their full potential and contributes to the development of society. Educated women are more likely to participate in the labor market, have fewer children, and ensure their children receive an education.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 16),
              const Text(
                'Women education leads to improved economic growth, reduced poverty, and enhanced health outcomes for families. It also promotes gender equality and increases women\'s social and political participation.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 16),
              const Text(
                'Images of Empowered Women:',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(height: 16),
              Image.network(
                'https://example.com/image1.jpg', // Replace with a real image URL
                height: 200,
              ),
              const SizedBox(height: 16),
              Image.network(
                'https://example.com/image2.jpg', // Replace with a real image URL
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
