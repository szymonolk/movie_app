import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app/models/movie_model.dart';

class MovieService {
  Future<List<MovieModel>> fetchTopMovies() async {
    final response = await http.get(Uri.parse(
        'https://movie-service.azurewebsites.net/api/Movies/MostPopular?pageNumber=1'));

    if (response.statusCode == 200) {
      print(response.body);
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => MovieModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load top movies');
    }
  }
}
