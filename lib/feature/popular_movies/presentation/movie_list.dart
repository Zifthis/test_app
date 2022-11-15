import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:test_app/feature/movie_details/domain/notifier/movie_details_notifier.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/page_provider.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_notifier.dart';
import 'package:test_app/feature/popular_movies/presentation/widgets/error_button.dart';
import 'package:test_app/feature/popular_movies/presentation/widgets/initial_button.dart';
import 'package:test_app/feature/popular_movies/presentation/widgets/list_tile_widget.dart';
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
  final PagingController<int, Result> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    Future.delayed(
      Duration.zero,
      () => _pagingController.addPageRequestListener(
        (pageKey) async {
          await _getPageState(pageKey);
        },
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Future.sync(
        () => _pagingController.refresh(),
      ),
      child: PagedListView<int, Result>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Result>(
          animateTransitions: true,
          itemBuilder: (context, item, index) => InkWell(
            onTap: () => _onTapButton(
              context,
              ref,
              item.id ?? 0,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTileWidget(
                results: item,
              ),
            ),
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

  Future<void> _getPageState(page) async {
    await ref
        .read(getPagedMovieNotifier.notifier)
        .fetchPagedMovies(page, _pagingController);
  }
}
