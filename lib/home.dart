import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Color.fromARGB(255, 8, 8, 8))),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white), // Ensure back icon is white
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to the Home Page',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 245, 241, 241)),
            ),
            const SizedBox(height: 20),
            const Text(
              'Women have the strength to shape the future, break barriers, and achieve greatness. Their power lies not only in their physical abilities but in their resilience, intellect, and compassion. Celebrate the strength of women and their contributions to society.',
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 244, 242, 242)),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  GridSection(
                    title: 'HerInEducation',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SectionPage(
                          sectionTitle: 'HerInEducation',
                          content: 'This section highlights women’s achievements and contributions in education.',
                          imagePaths: [
                            'assets/section3.jpeg',
                            'assets/education2.jpg',
                            'assets/education3.jpg',
                            'assets/education4.jpeg'
                          ],
                          extraContent: 'Women have been pivotal in shaping educational systems around the world. From pioneering new teaching methods to advocating for equal access to education, their contributions are vast and varied. Women educators inspire and empower the next generation to reach their full potential.',
                        )),
                      );
                    },
                  ),
                  GridSection(
                    title: 'HerInTech',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SectionPage(
                          sectionTitle: 'HerInTech',
                          content: 'This section highlights women’s achievements and contributions in technology.',
                          imagePaths: [
                            'assets/section1.jpeg',
                            'assets/tech2.jpg',
                            'assets/tech3.jpg',
                            'assets/tech4.jpeg'
                          ],
                          extraContent: 'Women in technology are breaking new ground every day. They are leaders in software development, cybersecurity, artificial intelligence, and many other fields. Their innovations and leadership are driving the tech industry forward, creating a more inclusive and diverse tech landscape.',
                        )),
                      );
                    },
                  ),
                  GridSection(
                    title: 'HerInSport',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SectionPage(
                          sectionTitle: 'HerInSport',
                          content: 'This section highlights women’s achievements and contributions in sports.',
                          imagePaths: [
                            'assets/sport1.jpg',
                            'assets/sport3.jpg',
                            'assets/sport3.jpg',
                            'assets/sport4.jpg'
                          ],
                          extraContent: 'Women athletes are not only breaking records but also breaking barriers in the world of sports. They compete at the highest levels, inspiring millions with their dedication, skill, and perseverance. Their achievements promote gender equality and redefine what it means to be an athlete.',
                        )),
                      );
                    },
                  ),
                  GridSection(
                    title: 'HerInCulture',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SectionPage(
                          sectionTitle: 'HerInCulture',
                          content: 'This section highlights women’s achievements and contributions in culture.',
                          imagePaths: [
                            'assets/section2.jpeg',
                            'assets/culture2.jpg',
                            'assets/culture2.jpg',
                            'assets/culture4.jpg'
                          ],
                          extraContent: 'Women’s contributions to culture are immense, spanning literature, music, art, and more. They shape our understanding of the world through their creative expressions and cultural leadership. Their work challenges norms and inspires social change, enriching our global cultural heritage.',
                        )),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridSection extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const GridSection({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class SectionPage extends StatelessWidget {
  final String sectionTitle;
  final String content;
  final List<String> imagePaths;
  final String extraContent;

  const SectionPage({required this.sectionTitle, required this.content, required this.imagePaths, required this.extraContent, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sectionTitle, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              content,
              style: const TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Image.asset(imagePaths[index]);
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              extraContent,
              style: const TextStyle(fontSize: 18, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
