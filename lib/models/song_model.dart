class Song {
  final String title;

  final String description;
  final String url;
  final String coverUrl;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl});

  static List<Song> songs = [
    Song(
        title: "talayi",
        description: "compose",
        url: 'assets/mp3/Moein - Ye Halghe Talaei (320).mp3',
        coverUrl: 'assets/cover/Moein-ye-halghe-talaei.jpg'),
    Song(
        title: "Freedom",
        description: "Shadmehr",
        url: 'assets/mp3/Shadmehr Aghili - Azadi.mp3',
        coverUrl: 'assets/cover/shadmehr-azadi.jpeg'),
    Song(
        title: "Halghe2",
        description: "this",
        url: 'assets/mp3/Moein - Ye Halghe Talaei (320).mp3',
        coverUrl: 'assets/cover/Moein-ye-halghe-talaei.jpg'),
  ];
}
