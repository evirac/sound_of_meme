import 'package:flutter/material.dart';
import 'package:sound_of_meme/constants.dart';
import 'package:sound_of_meme/widgets/create_floating_button.dart';

class CreatedSongsPage extends StatelessWidget {
  const CreatedSongsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F),
      appBar: AppBar(
        title: const Text(
          'Created Songs',
          style: TextStyle(color: kRazerGreen),
        ),
        backgroundColor: const Color(0xFF001F3F),
      ),
      body: const Center(
        child: Text(
          'Your created songs will appear here',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: const CreateFloatingButton(),
    );
  }
}
