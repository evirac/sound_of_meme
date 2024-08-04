import 'package:flutter/material.dart';
import 'package:sound_of_meme/constants.dart';
import 'package:sound_of_meme/pages/create_song_page.dart';

class CreateFloatingButton extends StatelessWidget {
  const CreateFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CreateSongPage()),
        );
      },
      backgroundColor: kRazerDarkGreen,
      child: const Icon(Icons.add),
    );
  }
}
