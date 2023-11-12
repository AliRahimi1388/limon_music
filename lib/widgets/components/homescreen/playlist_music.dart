import 'package:flutter/material.dart';
import 'package:limon_melomix/models/playlist_model.dart';

import '../playlist_card.dart';
import '../section_header.dart';

class PlayListMusic extends StatelessWidget {
  const PlayListMusic({
    super.key,
    required this.playlist,
  });

  final List<Playlist> playlist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SectionHeader(title: 'Playlists'),
          ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 20),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: playlist.length,
              itemBuilder: (context, index) {
                return PlayListCard(playlist: playlist[index]);
              })
        ],
      ),
    );
  }
}
