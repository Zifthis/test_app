import 'package:flutter/material.dart';
import 'package:test_app/common/const.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';

class ListTileWidget extends StatelessWidget {
  final Result results;
  const ListTileWidget({
    required this.results,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('$imageUrl${results.posterPath}'),
        ),
        title: Text(
          results.title ?? '',
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          maxLines: 1,
        ),
        trailing: SizedBox(
          height: 35,
          width: 35,
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            child: Text(
              results.voteAverage.toString(),
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
}
