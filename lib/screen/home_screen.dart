import 'package:flutter/material.dart';
import 'package:limon_melomix/models/playlist_model.dart';

import '../models/song_model.dart';
import '../widgets/components/custom_app_bar.dart';
import '../widgets/components/custom_bot_nav_bar.dart';
import '../widgets/components/discover_music.dart';
import '../widgets/components/homescreen/playlist_music.dart';
import '../widgets/components/playlist_card.dart';
import '../widgets/components/section_header.dart';
import '../widgets/components/trending_music.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    List<Playlist> playlist = Playlist.playlist;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(),
        bottomNavigationBar: CustomBottomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              DiscoverMusic(),
              TrendingMusic(songs: songs),
              PlayListMusic(playlist: playlist)
            ],
          ),
        ),
      ),
    );
  }
}


