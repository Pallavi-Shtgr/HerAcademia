import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(color: Colors.white), // White color for the title
        ),
        centerTitle: true, // Center the title
        backgroundColor: const Color.fromARGB(255, 0, 0, 0), // Dark purple for the AppBar
      ),
      body: Container(
        color: const Color.fromARGB(255, 4, 9, 65), // Blueish-purple background color
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                      'assets/logo.jpeg'), // Replace with your image path
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Our Mission',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White text color
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'At HerAcademia, our mission is to empower women through education by providing accessible, high-quality learning resources and job application platforms that foster personal and professional growth. We are dedicated to bridging the educational gap and creating equal opportunities for women from all backgrounds. Our platform offers a diverse range of educational materials, including interactive courses, expert-led webinars, and practical resources to help women gain the skills and knowledge they need to excel in their chosen fields. Additionally, we provide a job application platform to connect women with career opportunities tailored to their skills and aspirations. By integrating education and career development, we aim to inspire confidence, drive innovation, and contribute to a more equitable society.',
                style: TextStyle(
                    fontSize: 16, color: Colors.white), // White text color
              ),
              const SizedBox(height: 20),
              const Text(
                'Our Vision',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White text color
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Our vision is to build a world where every woman has the opportunity to receive a high-quality education and achieve her full potential. We envision a future where women are not only well-educated but also empowered to lead, innovate, and create positive change in their communities and beyond. Through HerAcademia, we aim to eliminate educational barriers and provide a seamless pathway to career opportunities. Our learning and job application platforms are designed to support women at every stage of their professional journey. We aspire to be a catalyst for social progress, fostering a global community of learners and leaders who champion gender equality and advocate for the advancement of women’s rights. Our goal is to drive transformative impact and inspire future generations of women to break new ground and shape a better world.',
                style: TextStyle(
                    fontSize: 16, color: Colors.white), // White text color
              ),
              const SizedBox(height: 20),
              const Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White text color
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Email: contact@heracademia.com',
                style: TextStyle(
                    fontSize: 16, color: Colors.white), // White text color
              ),
              const Text(
                'Phone: +123 456 7890',
                style: TextStyle(
                    fontSize: 16, color: Colors.white), // White text color
              ),
              const SizedBox(height: 20),
              const Divider(color: Colors.white),
              const SizedBox(height: 10),
              const Text(
                'Follow Us',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White text color
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      // Add your social media link here
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add your social media link here
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add your social media link here
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add your social media link here
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
