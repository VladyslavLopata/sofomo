import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sofomo/features/search/data/models/repository.dart';

part 'search_page_state.freezed.dart';

@freezed
class SearchPageState with _$SearchPageState {
  const factory SearchPageState.initial() = InitialSearchPageState;
  const factory SearchPageState.loading() = LoadingSearchPageState;
  const factory SearchPageState.error() = ErrorSearchPageState;
  const factory SearchPageState.noResults() = NoResultsSearchPageState;
  const factory SearchPageState.matchesFound(List<Repository> repositories) =
      MatchesFoundSearchPageState;
}
