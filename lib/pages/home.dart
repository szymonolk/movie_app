import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/services/movie_service.dart';
import 'package:movie_app/widgets/custom_bottom_navbar.dart';
import 'package:movie_app/widgets/movie_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Movies'),
      ),
      body: FutureBuilder<List<MovieModel>>(
        future: MovieService().fetchTopMovies(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<MovieModel> movies = snapshot.data!;
            return ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return MovieCard(movie: movies[index]);
              },
            );
          }
        },
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}