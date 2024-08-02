import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  final List<Map<String, dynamic>> songs = [
    {
      'image': 'assets/song1.jpg',
      'title': 'Meme Song 1',
      'tags': ['funny', 'meme', 'viral'],
      'likes': 100,
      'plays': 500,
    },
    {
      'image': 'assets/song2.jpg',
      'title': 'Meme Song 2',
      'tags': ['trend', 'joke', 'hit'],
      'likes': 200,
      'plays': 800,
    },
    // Add more songs as needed
  ];

  DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F),
      appBar: AppBar(
        title: const Text('Discover'),
        backgroundColor: const Color(0xFF001F3F),
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return SongCard(
            image: songs[index]['image'],
            title: songs[index]['title'],
            tags: songs[index]['tags'],
            likes: songs[index]['likes'],
            plays: songs[index]['plays'],
          );
        },
      ),
    );
  }
}

class SongCard extends StatelessWidget {
  final String image;
  final String title;
  final List<String> tags;
  final int likes;
  final int plays;

  const SongCard(
      {super.key,
      required this.image,
      required this.title,
      required this.tags,
      required this.likes,
      required this.plays});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF002F6F),
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, fit: BoxFit.cover),
            const SizedBox(height: 10.0),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5.0),
            Row(
              children: tags.map((tag) => Chip(label: Text(tag))).toList(),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite, color: Colors.red),
                    const SizedBox(width: 5.0),
                    Text('$likes', style: const TextStyle(color: Colors.white)),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.play_arrow, color: Colors.green),
                    const SizedBox(width: 5.0),
                    Text('$plays', style: const TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
