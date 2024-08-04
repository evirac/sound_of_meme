import 'package:flutter/material.dart';
import 'package:sound_of_meme/constants.dart';

class CreateSongPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Create Song',
            style: TextStyle(color: kRazerDarkGreen),
          ),
          backgroundColor: kMidnightBlue,
          bottom: const TabBar(
            indicatorColor: kRazerGreen,
            unselectedLabelColor: Colors.white,
            labelColor: kRazerGreen,
            tabs: [
              Tab(text: 'Create'),
              Tab(text: 'Custom Create'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CreateTab(),
            CustomCreateTab(),
          ],
        ),
      ),
    );
  }
}

class CreateTab extends StatelessWidget {
  const CreateTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Genre and Description',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(height: 10),
          TextField(
            maxLines: 10,
            decoration: InputDecoration(
              hintText: 'Enter genre and description...',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Handle the create song action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kRazerDarkGreen,
                padding: const EdgeInsets.symmetric(vertical: 22.0),
              ),
              child: const Text(
                'Create Song',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCreateTab extends StatelessWidget {
  const CustomCreateTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Song Title',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter song title...',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Lyrics of Song',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(height: 10),
          TextField(
            maxLines: 10,
            decoration: InputDecoration(
              hintText: 'Enter lyrics of song...',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Genre',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter genre...',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Handle the custom create song action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kRazerDarkGreen,
                padding: const EdgeInsets.symmetric(vertical: 22.0),
              ),
              child: const Text(
                'Create Song',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CreateFloatingButton extends StatelessWidget {
  const CreateFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kRazerGreen,
      child: const Icon(Icons.add, color: Colors.black),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CreateSongPage()),
        );
      },
    );
  }
}
