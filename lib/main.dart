
import 'package:flutter/material.dart';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0F1A),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // 🔝 Navbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'AhmadBlog',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Text('Home'),
                      SizedBox(width: 20),
                      Text('About'),
                      SizedBox(width: 20),
                      Text('Contact'),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const SizedBox(
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
 const SizedBox(width: 15),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Create Article'),
                      )
                    ],
                  )
                ],
              ),
            ),

            // 🌟 Hero Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 60),
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1A1F35), Color(0xFF0B0F1A)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: const [
                  Text(
                    'Explore Blogs',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Dive into tech, lifestyle & creativity',
                    style: TextStyle(color: Colors.white60),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),

            // 📊 Stats
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  StatBox(title: 'Articles', value: '15'),
                  StatBox(title: 'Categories', value: '9'),
                  StatBox(title: 'Authors', value: '20'),
                ],
              ),
            ),
     // 🏷 Categories
            Wrap(
              spacing: 10,
              children: const [
                Chip(label: Text('All')),
                Chip(label: Text('Apps')),
                Chip(label: Text('Art')),
                Chip(label: Text('Books')),
                Chip(label: Text('Health')),
                Chip(label: Text('Movies')),
              ],
            ),

            const SizedBox(height: 30),

            // 📰 Blog Card
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Building Scalable Apps',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Learn how to build modern scalable applications...',
                          style: TextStyle(color: Colors.white60),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
class StatBox extends StatelessWidget {
  final String title;
  final String value;

  const StatBox({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(value,
              style:
                  const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text(title, style: const TextStyle(color: Colors.white60)),
        ],
      ),
    );
  }
}
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchPosts() async {
  final response = await http.get(Uri.parse("http://13.233.143.117:3000/posts"));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load posts');
  }
}
