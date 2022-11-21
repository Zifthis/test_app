import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:test_app/feature/movie_details/domain/notifier/movie_details_notifier.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/page_provider.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_notifier.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_state.dart';
import 'package:test_app/feature/popular_movies/presentation/widgets/list_tile_widget.dart';
import 'package:test_app/router/app_router.gr.dart';

class MovieList extends StatelessWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(child: MovieListView());
  }
}

class MovieListView extends ConsumerStatefulWidget {
  const MovieListView({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MovieListViewState();
}

class _MovieListViewState extends ConsumerState<MovieListView> {
  final PagingController<int, Result> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      ref.read(getPagedMovieNotifier.notifier).fetchPagedMoviesList(pageKey);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<PagedState>(
      getPagedMovieNotifier,
      (_, next) {
        next.maybeMap(
          pagingLoaded: (value) => _pagedListProviderState(value.result, ref),
          error: (error) => _pagingController.error = error,
          orElse: () {},
        );
      },
    );

    return RefreshIndicator(
      onRefresh: () => Future.sync(
        () => _pagingController.refresh(),
      ),
      child: PagedListView<int, Result>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Result>(
          animateTransitions: true,
          itemBuilder: (context, item, index) => InkWell(
            onTap: () => _onTapButton(context, ref, item.id ?? 0),
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

  void _pagedListProviderState(List<Result> list, WidgetRef ref) {
    final newItems = list;
    final isLastPage = newItems.length < 20;
    if (isLastPage) {
      _pagingController.appendLastPage(newItems);
    } else {
      final nextPageKey = ref.read(setPageProvider.notifier).state++;
      _pagingController.appendPage(newItems, nextPageKey);
    }
  }

  void _onTapButton(BuildContext context, WidgetRef ref, int movieId) async {
    ref
        .read(getMovieDetailsNotifier.notifier)
        .getMovieDetails(ref.read(setPageProvider), movieId);
    context.router.pushNamed(const MovieDetailsScreen().path);
  }
}
