import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:test_app/feature/movie_details/domain/notifier/movie_details_notifier.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/page_provder.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_notifier.dart';
import 'package:test_app/feature/popular_movies/presentation/widgets/error_button.dart';
import 'package:test_app/feature/popular_movies/presentation/widgets/initial_button.dart';
import 'package:test_app/router/app_router.gr.dart';

class MovieList extends ConsumerWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getPagedMovieNotifier);

    return Expanded(
      child: SizedBox(
        child: state.maybeWhen(
          initial: () => const InitialButton(),
          error: (error) => ErrorButton(error: error),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (value) => MovieListView(movieResponse: value),
          orElse: () => const Center(child: Text('Error')),
        ),
      ),
    );
  }
}

class MovieListView extends ConsumerStatefulWidget {
  final MovieResponse movieResponse;

  const MovieListView({
    super.key,
    required this.movieResponse,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MovieListViewState();
}

class _MovieListViewState extends ConsumerState<MovieListView> {
  static const _pageSize = 20;
  final PagingController<int, Result> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });

    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = widget.movieResponse.result;
      final isLastPage = newItems!.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;

        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, Result>(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<Result>(
        itemBuilder: (context, item, index) => SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: widget.movieResponse.result?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ColoredBox(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () => _onTapButton(
                      context,
                      ref,
                      widget.movieResponse.result?[index].id ?? 0,
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.movie),
                      trailing: Text(
                        widget.movieResponse.result?[index].voteAverage
                                .toString() ??
                            '',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                        ),
                      ),
                      title: Text(widget.movieResponse.result?[index].title
                              .toString() ??
                          ''),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  void _onTapButton(BuildContext context, WidgetRef ref, int movieId) async {
    ref
        .read(getMovieDetailsNotifier.notifier)
        .getMovieDetails(ref.read(setPageProvider), movieId);
    context.router.pushNamed(const MovieDetailsScreen().path);
  }
}
