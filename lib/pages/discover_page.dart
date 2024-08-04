import 'package:flutter/material.dart';
import 'package:sound_of_meme/constants.dart';
import 'package:sound_of_meme/widgets/create_floating_button.dart';

class DiscoverPage extends StatelessWidget {
  final List<Map<String, dynamic>> songs = [
    {
      'image': 'assets/images/song1.jpg',
      'title': 'Meme Song 1',
      'tags': ['funny', 'meme', 'viral'],
      'likes': 100,
      'plays': 500,
    },
    {
      'image': 'assets/images/song2.jpg',
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
      backgroundColor: kMidnightBlue,
      appBar: AppBar(
        title: const Text(
          'Discover',
          style: TextStyle(color: kRazerDarkGreen),
        ),
        backgroundColor: kMidnightBlue,
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
      floatingActionButton: const CreateFloatingButton(),
    );
  }
}

class SongCard extends StatelessWidget {
  final String image;
  final String title;
  final List<String> tags;
  final int likes;
  final int plays;

  const SongCard({
    super.key,
    required this.image,
    required this.title,
    required this.tags,
    required this.likes,
    required this.plays,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kMidnightBlue,
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: kRazerDarkGreen, width: 2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(image, fit: BoxFit.cover),
                )),
            const SizedBox(height: 10.0),
            Text(
              title,
              style: const TextStyle(
                color: kRazerDarkGreen,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0),
            Row(
              children: tags
                  .map((tag) => Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Chip(label: Text(tag)),
                      ))
                  .toList(),
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
