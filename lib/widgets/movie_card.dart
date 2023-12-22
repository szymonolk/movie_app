import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_model.dart';


class MovieCard extends StatefulWidget {
  final MovieModel movie;
  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
   return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 100.0, 
              height: 150.0,
              child: Image.network(widget.movie.posterUrl)
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.movie.title,
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    widget.movie.description,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}