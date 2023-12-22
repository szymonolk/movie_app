class MovieModel {
  final int id;
  final String title;
  final String releaseDate;
  final String description;
  final String posterUrl;

  const MovieModel({
    required this.id,
    required this.title,
    required this.releaseDate,
    required this.description,
    required this.posterUrl,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['movieId'],
      title: json['title'] as String,
      releaseDate: json['releaseDate'] as String,
      description: json['overview'] as String,
      posterUrl: json['posterPath']
    );
  }
}
//  {
//     "movieId": 787699,
//     "title": "Wonka",
//     "releaseDate": "2023-12-06T00:00:00",
//     "overview": "Willy Wonka – chock-full of ideas and determined to change the world one delectable bite at a time – is proof that the best things in life begin with a dream, and if you’re lucky enough to meet Willy Wonka, anything is possible.",
//     "posterPath": "/qhb1qOilapbapxWQn9jtRCMwXJF.jpg"
//   },