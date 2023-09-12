import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sofomo/features/search/data/models/repository.dart';
import 'package:sofomo/features/search/domain/use_cases/find_repositories.dart';
import 'package:sofomo/features/search/presentation/notifier/search_page_notifier.dart';
import 'package:sofomo/features/search/presentation/notifier/search_page_state.dart';

class MockFindRepositories extends Mock implements FindRepositories {}

class FakeRepository extends Fake implements Repository {}

const emptyResponse = <Repository>[];
final oneRepoResponse = [FakeRepository()];

void main() {
  final findRepositories = MockFindRepositories();
  final notifier = SearchPageNotifier(findRepositories);
  group(
    'SearchPageNotifier tests',
    () {
      test(
        'GIVEN initial state '
        'WHEN empty search is issued '
        'THEN should do nothing ',
        () {
          notifier.searchByKeyword('');
          verifyNever(() => findRepositories.call(any()));
        },
      );

      test(
        'GIVEN search is not empty '
        'WHEN result is null '
        'THEN should notify error state ',
        () {
          final statesStream = StreamController<SearchPageState>();
          when(() => findRepositories.call(any())).thenAnswer(
            (_) async => null,
          );
          notifier
            ..addListener(() {
              statesStream.add(notifier.value);
            })
            ..searchByKeyword('a');

          expect(
            statesStream.stream,
            emitsInOrder(
              [
                const LoadingSearchPageState(),
                const ErrorSearchPageState(),
              ],
            ),
          );
        },
      );

      test(
        'GIVEN search is not empty '
        'WHEN result is an empty list '
        'THEN should notify empty state ',
        () {
          final statesStream = StreamController<SearchPageState>();
          when(() => findRepositories.call(any())).thenAnswer(
            (_) async => emptyResponse,
          );
          notifier
            ..addListener(() {
              statesStream.add(notifier.value);
            })
            ..searchByKeyword('a');

          expect(
            statesStream.stream,
            emitsInOrder(
              [
                const LoadingSearchPageState(),
                const NoResultsSearchPageState(),
              ],
            ),
          );
        },
      );

      test(
        'GIVEN search is not empty '
        'WHEN result is a filled list '
        'THEN should notify data state ',
        () {
          final statesStream = StreamController<SearchPageState>();
          when(() => findRepositories.call(any())).thenAnswer(
            (_) async => oneRepoResponse,
          );
          notifier
            ..addListener(() {
              statesStream.add(notifier.value);
            })
            ..searchByKeyword('a');

          expect(
            statesStream.stream,
            emitsInOrder(
              [
                const LoadingSearchPageState(),
                MatchesFoundSearchPageState(oneRepoResponse),
              ],
            ),
          );
        },
      );
    },
  );
}
