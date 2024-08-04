import 'package:flutter/material.dart';
import 'package:sound_of_meme/constants.dart';
import 'package:sound_of_meme/pages/auth_page.dart';

void main() {
  runApp(SoundOfMemeApp());
}

class SoundOfMemeApp extends StatelessWidget {
  const SoundOfMemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sound of Meme',
      darkTheme: ThemeData(
        primaryColor: kMidnightBlue,
        fontFamily: kFontFamily,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: kMidnightBlue, secondary: kRazerGreen),
      ),
      home: const AuthPage(),
    );
  }
}
