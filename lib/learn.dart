import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Women Education',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LearnPage(),
    );
  }
}

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SectionsPage()),
            );
          },
          child: const Text('Learn'),
        ),
      ),
    );
  }
}

class SectionsPage extends StatelessWidget {
  const SectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn More', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Section(
              title: 'Learn through Videos',
              content: 'Here, you can find educational videos that cover various topics on women education.',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VideoPage()),
                );
              },
            ),
            const SizedBox(height: 16),
            Section(
              title: 'Learn through Practice',
              content: 'Engage in interactive exercises and practice materials to reinforce your learning.',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PracticePage()),
                );
              },
            ),
            const SizedBox(height: 16),
            Section(
              title: 'Learn through Open Sources',
              content: 'Explore open-source materials and resources to further your understanding and knowledge.',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OpenSourceDetailPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onPressed;

  const Section({
    required this.title,
    required this.content,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 250, 245, 245),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: const TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 246, 241, 241),
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: onPressed,
          child: const Text('Learn More'),
        ),
      ],
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final String content;

  const DetailPage({
    required this.title,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          content,
          style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 247, 244, 244)),
        ),
      ),
    );
  }
}

class OpenSourceDetailPage extends StatelessWidget {
  const OpenSourceDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Open Source', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Open Source',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 241, 237, 237),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Open source resources provide valuable tools and information freely available for everyone. By exploring these materials, you can enhance your knowledge and skills in various areas. Check out the resources below to learn more about open source projects and contributions.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(221, 255, 253, 253),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Image.asset(
              'assets/github.jpeg', // Replace with your image asset path
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                const url = 'https://github.com/topics/women-empowerment'; // Replace with your GitHub URL
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const Text('GitHub'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: const Text('Exit'),
            ),
          ],
        ),
      ),
    );
  }
}

class PracticePage extends StatelessWidget {
  const PracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfect Practice Makes Man Perfect', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Number of buttons per row
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  PracticeButton(
                    title: 'LeetCode',
                    url: 'https://leetcode.com/', // Replace with your URL
                  ),
                  PracticeButton(
                    title: 'CodeChef',
                    url: 'https://www.codechef.com/', // Replace with your URL
                  ),
                  PracticeButton(
                    title: 'HackerRank',
                    url: 'https://www.hackerrank.com/', // Replace with your URL
                  ),
                  PracticeButton(
                    title: 'GeeksforGeeks',
                    url: 'https://www.geeksforgeeks.org/', // Replace with your URL
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: const Text('Exit'),
            ),
          ],
        ),
      ),
    );
  }
}

class PracticeButton extends StatelessWidget {
  final String title;
  final String url;

  const PracticeButton({
    required this.title,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60, // Set height to make it larger
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // primary: Colors.black, // Set the background color
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
        ),
        onPressed: () async {
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: Text(title, style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
      ),
    );
  }
}

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn through Videos', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Number of buttons per row
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  VideoButton(
                    title: 'Basic Programming',
                    url: 'https://www.youtube.com/c/ProgrammingwithMosh', // Replace with your URL
                  ),
                  VideoButton(
                    title: 'Web Development',
                    url: 'https://www.youtube.com/c/TraversyMedia', // Replace with your URL
                  ),
                  VideoButton(
                    title: 'MERN Stack',
                    url: 'https://www.youtube.com/c/Academind', // Replace with your URL
                  ),
                  VideoButton(
                    title: 'App Development',
                    url: 'https://www.youtube.com/c/CodeWithChris', // Replace with your URL
                  ),
                  VideoButton(
                    title: 'Cybersecurity',
                    url: 'https://www.youtube.com/c/TheCyberMentor', // Replace with your URL
                  ),
                  VideoButton(
                    title: 'AI and ML',
                    url: 'https://www.youtube.com/c/3Blue1Brown', // Replace with your URL
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: const Text('Exit'),
            ),
          ],
        ),
      ),
    );
  }
}

class VideoButton extends StatelessWidget {
  final String title;
  final String url;

  const VideoButton({
    required this.title,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60, // Set height to make it larger
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // primary: Colors.black, // Set the background color
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
        ),
        onPressed: () async {
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: Text(title, style: const TextStyle(color: Color.fromARGB(255, 11, 11, 11))),
      ),
    );
  }
}
