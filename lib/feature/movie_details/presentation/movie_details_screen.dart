import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/const.dart';
import 'package:test_app/feature/movie_details/domain/entities/movie_details.dart';
import 'package:test_app/feature/movie_details/domain/notifier/movie_details_notifier.dart';
import 'package:test_app/feature/movie_details/presentation/widget/row_widget.dart';
import 'package:test_app/feature/movie_details/presentation/widget/text_style.dart';

class MovieDetailsScreen extends ConsumerWidget {
  const MovieDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailsState = ref.watch(getMovieDetailsNotifier);

    return Scaffold(
        body: detailsState.maybeWhen(
            orElse: () => const Center(child: CircularProgressIndicator()),
            loaded: (value) => DetailScreen(movieDetails: value)));
  }
}

class DetailScreen extends ConsumerWidget {
  final MovieDetails movieDetails;
  const DetailScreen({
    super.key,
    required this.movieDetails,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Movie Details',
        ),
      ),
      body: Center(
        child: Container(
          width: 320,
          height: 480,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                        fit: BoxFit.fill,
                        '$imageUrl${movieDetails.posterPath}'),
                  )),
              const SizedBox(
                height: 12,
              ),
              Text(
                movieDetails.title ?? '',
                textAlign: TextAlign.center,
                style: applyStyle(),
              ),
              const SizedBox(
                height: 6,
              ),
              RowWidget(
                firstInput: 'Budget: ',
                secondInput: movieDetails.budget.toString(),
              ),
              RowWidget(
                firstInput: 'Popularity Score: ',
                secondInput: movieDetails.popularity.toString(),
              ),
              RowWidget(
                firstInput: 'Release Date: ',
                secondInput: movieDetails.releaseDate.toString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
