import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:limon_melomix/models/song_model.dart';
import 'package:limon_melomix/widgets/components/songscreen/player_button.dart';

import '../seekbar.dart';

class MusicPlayer extends StatelessWidget {
  MusicPlayer({
    super.key,
    required Stream<SeekBarData> seekBarDataStream,
    required this.audioPlayer,
    required this.song,
  }) : _seekBarDataStream = seekBarDataStream;

  final Song song;
  final Stream<SeekBarData> _seekBarDataStream;
  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            song.title,
            style: Theme.of(context)
                ?.textTheme
                .headlineMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            song.description,
            style: Theme.of(context)?.textTheme.headlineSmall?.copyWith(
                color: Colors.white.withOpacity(0.5),
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 30,
          ),
          StreamBuilder<SeekBarData>(
              stream: _seekBarDataStream,
              builder: (context, snapshot) {
                final positionData = snapshot.data;
                return SeekBar(
                  position: positionData?.position ?? Duration.zero,
                  duration: positionData?.duration ?? Duration.zero,
                  onChangeEnd: audioPlayer.seek,
                );
              }),
          PlayerButtons(audioPlayer: audioPlayer),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  iconSize: 35,
                  onPressed: () {},
                  icon: Icon(
                    Icons.cloud_download,
                    color: Colors.white,
                  )),
              IconButton(
                  iconSize: 35,
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
