import 'package:flutter/material.dart';
import 'package:sound_of_meme/pages/discover_page.dart';
import 'package:sound_of_meme/pages/liked_songs_page.dart';
import 'package:sound_of_meme/pages/created_songs_page.dart';
import 'package:sound_of_meme/constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    DiscoverPage(),
    LikedSongsPage(),
    CreatedSongsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Liked Songs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Created Songs',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kRazerGreen,
        unselectedItemColor: Colors.white,
        backgroundColor: kMidnightBlue,
        onTap: _onItemTapped,
      ),
    );
  }
}
