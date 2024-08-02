import 'package:flutter/material.dart';

class CreatedSongsPage extends StatelessWidget {
  const CreatedSongsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F),
      appBar: AppBar(
        title: const Text('Created Songs'),
        backgroundColor: const Color(0xFF001F3F),
      ),
      body: const Center(
        child: Text(
          'Your created songs will appear here',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
