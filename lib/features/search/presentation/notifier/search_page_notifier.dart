import 'package:injectable/injectable.dart';
import 'package:sofomo/core/value_notifiers/logging_value_notifier.dart';
import 'package:sofomo/features/search/domain/use_cases/find_repositories.dart';
import 'package:sofomo/features/search/presentation/notifier/search_page_state.dart';

@injectable
class SearchPageNotifier extends LoggingValueNotifier<SearchPageState> {
  SearchPageNotifier(this._findRepositories)
      : super(const SearchPageState.initial());

  final FindRepositories _findRepositories;

  Future<void> searchByKeyword(String keyword) async {
    if (keyword.isEmpty) return;

    value = const SearchPageState.loading();
    final repositories = await _findRepositories(keyword);

    if (repositories == null) {
      value = const SearchPageState.error();
      return;
    }

    if (repositories.isEmpty) {
      value = const SearchPageState.noResults();
      return;
    }

    value = SearchPageState.matchesFound(repositories);
  }
}
