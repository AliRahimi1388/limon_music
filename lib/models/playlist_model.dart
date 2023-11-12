import 'song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({required this.title, required this.songs, required this.imageUrl});

  static List<Playlist> playlist = [
    Playlist(
        title: "POP",
        songs: Song.songs,
        imageUrl:
            'assets/playlist/download1.jpeg'),
    Playlist(
        title: "Rock",
        songs: Song.songs,
        imageUrl:
            'assets/playlist/download2.jpeg'),
    Playlist(
        title: "Jazz",
        songs: Song.songs,
        imageUrl:
            'assets/playlist/Pop-Smoke-2.jpg')
  ];
}
