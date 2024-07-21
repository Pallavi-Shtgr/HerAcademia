import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JobsPage extends StatefulWidget {
  const JobsPage({super.key});

  @override
  _JobsPageState createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> _jobs = [
    {'title': 'Web Developer', 'description': 'Looking for a skilled web developer with experience in HTML, CSS, and JavaScript.'},
    {'title': 'Software Developer', 'description': 'Seeking a software developer proficient in C++, Java, or Python.'},
    {'title': 'Data Scientist', 'description': 'Data Scientist with knowledge in machine learning, data analysis, and Python/R.'},
    {'title': 'UX/UI Designer', 'description': 'Creative UX/UI designer with experience in Figma and Adobe XD.'},
    {'title': 'Product Manager', 'description': 'Experienced product manager with a background in agile methodologies.'},
    {'title': 'Mobile Developer', 'description': 'Mobile developer skilled in Flutter or React Native.'},
    {'title': 'DevOps Engineer', 'description': 'DevOps Engineer with expertise in AWS, Docker, and Kubernetes.'},
    {'title': 'Digital Marketer', 'description': 'Digital marketer with experience in SEO, SEM, and social media campaigns.'},
  ];
  List<Map<String, String>> _filteredJobs = [];

  @override
  void initState() {
    super.initState();
    _filteredJobs = _jobs;
    _searchController.addListener(_filterJobs);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterJobs);
    _searchController.dispose();
    super.dispose();
  }

  void _filterJobs() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      _filteredJobs = _jobs.where((job) {
        return job['title']!.toLowerCase().contains(query) ||
               job['description']!.toLowerCase().contains(query);
      }).toList();
    });
  }

  void _showApplicationForm(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController resumeLinkController = TextEditingController();
    TextEditingController coverLetterController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Job Application Form'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Full Name'),
                ),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  controller: phoneController,
                  decoration: const InputDecoration(labelText: 'Phone Number'),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
                TextField(
                  controller: resumeLinkController,
                  decoration: const InputDecoration(labelText: 'Resume Link'),
                ),
                TextField(
                  controller: coverLetterController,
                  maxLines: 4,
                  decoration: const InputDecoration(labelText: 'Cover Letter'),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Submit'),
              onPressed: () {
                // Handle form submission
                if (nameController.text.isNotEmpty &&
                    emailController.text.isNotEmpty &&
                    phoneController.text.isNotEmpty &&
                    resumeLinkController.text.isNotEmpty) {
                  // Form is valid
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Form submitted successfully')),
                  );
                  Navigator.of(context).pop();
                } else {
                  // Form is not valid
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please fill all fields')),
                  );
                }
              },
            ),
          ],
        );
      },
    );
  }

  Widget _jobSection(BuildContext context, String title, String description) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(description),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () => _showApplicationForm(context),
                child: const Text('Apply'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jobs', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white), // Ensure back icon is white
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search for jobs...',
                hintStyle: const TextStyle(color: Colors.white),
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                filled: true,
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: _filteredJobs.map((job) {
                return _jobSection(context, job['title']!, job['description']!);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
