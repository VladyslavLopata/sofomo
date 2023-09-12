import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofomo/core/di/di.dart';
import 'package:sofomo/features/repository_details/presentation/repository_details_page.dart';
import 'package:sofomo/features/search/data/models/repository.dart';
import 'package:sofomo/features/search/presentation/notifier/search_page_notifier.dart';
import 'package:sofomo/features/search/presentation/notifier/search_page_state.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  static const name = 'search';
  static const path = '/search';

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final notifier = injector<SearchPageNotifier>();
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    notifier.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: ValueListenableBuilder(
            valueListenable: notifier,
            builder: (context, state, _) {
              final searchField = Center(
                key: const Key('searchKey'),
                child: _SearchField(
                  textController: textController,
                  searchByKeyword: notifier.searchByKeyword,
                  autofocus: notifier.value is InitialSearchPageState,
                ),
              );
              return state.when(
                initial: () => searchField,
                loading: () => Column(
                  key: const Key('loading'),
                  children: [
                    searchField,
                    const Expanded(
                      child: Center(
                        child: SizedBox.square(
                          dimension: 24,
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ),
                  ],
                ),
                error: () => Column(
                  key: const Key('error'),
                  children: [
                    searchField,
                    const Expanded(
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Error occured while fetching data. '
                              'Check your internet connection and '
                              'try searching again.',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                noResults: () => Column(
                  key: const Key('noResults'),
                  children: [
                    searchField,
                    const Expanded(
                      child: Center(child: Text('No matches found')),
                    ),
                  ],
                ),
                matchesFound: (matches) => _MatchesFound(
                  key: const Key('matchesFound'),
                  matches: matches,
                  searchField: searchField,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _MatchesFound extends StatelessWidget {
  const _MatchesFound({
    required this.matches,
    super.key,
    this.searchField,
  });

  final Widget? searchField;
  final List<Repository> matches;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: searchField),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: matches.length,
            (_, index) {
              final match = matches[index];
              return GestureDetector(
                onTap: () => context.pushNamed(
                  RepositoryDetailsPage.name,
                  pathParameters: {
                    'login': match.owner.login,
                    'repositoryName': match.name,
                  },
                ),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          matches[index].name,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          matches[index].url,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField({
    required this.textController,
    required this.searchByKeyword,
    required this.autofocus,
  });

  final TextEditingController textController;
  final void Function(String text) searchByKeyword;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              autofocus: autofocus,
              controller: textController,
              onSubmitted: (_) {
                FocusScope.of(context).unfocus();
                searchByKeyword(textController.text);
              },
              decoration: InputDecoration(
                label: const Text('Find Github repositories'),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hintText: 'Find Github repositories',
                border: const OutlineInputBorder(),
                suffixIcon: _ClearButton(textController: textController),
              ),
            ),
          ),
          _SearchIcon(
            textController: textController,
            searchByKeyword: () {
              FocusScope.of(context).unfocus();

              searchByKeyword(textController.text);
            },
          ),
        ],
      ),
    );
  }
}

class _ClearButton extends StatelessWidget {
  const _ClearButton({
    required this.textController,
  });

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: textController,
      builder: (_, value, ___) {
        if (value.text.isEmpty) return const SizedBox.shrink();
        return IconButton(
          onPressed: textController.clear,
          icon: const Icon(Icons.close),
        );
      },
    );
  }
}

class _SearchIcon extends StatelessWidget {
  const _SearchIcon({
    required this.textController,
    required this.searchByKeyword,
  });

  final TextEditingController textController;
  final VoidCallback searchByKeyword;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: textController,
      builder: (_, value, ___) {
        final isEmpty = value.text.isEmpty;
        return IconButton(
          color: Colors.blue,
          onPressed: isEmpty ? null : searchByKeyword,
          icon: const Icon(Icons.search),
        );
      },
    );
  }
}
