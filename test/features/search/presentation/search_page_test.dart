import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sofomo/features/search/data/models/repository.dart';
import 'package:sofomo/features/search/presentation/notifier/search_page_notifier.dart';
import 'package:sofomo/features/search/presentation/notifier/search_page_state.dart';
import 'package:sofomo/features/search/presentation/search_page.dart';

class MockSearchPageNotifier extends Mock implements SearchPageNotifier {}

Widget _getWidget() => const MaterialApp(
      home: SearchPage(),
    );

const matchData = [
  Repository(
    name: 'name',
    url: 'url',
    owner: Owner('login'),
  ),
  Repository(
    name: '2',
    url: 'ur',
    owner: Owner('lll'),
  ),
];

void main() {
  final notifier = MockSearchPageNotifier();
  final injector = GetIt.instance;
  setUpAll(() {
    injector.registerFactory<SearchPageNotifier>(() => notifier);
  });
  group(
    'SearchPage tests',
    () {
      testWidgets(
        'GIVEN initial state '
        'THEN only text field should be shown',
        (tester) async {
          when(() => notifier.value)
              .thenReturn(const SearchPageState.initial());
          await tester.pumpWidget(_getWidget());
          await tester.pump();
          expect(
            find.byKey(const Key('searchKey')),
            findsOneWidget,
          );
          expect(
            find.byKey(const Key('loading')),
            findsNothing,
          );
          expect(
            find.byKey(const Key('error')),
            findsNothing,
          );
          expect(
            find.byKey(const Key('matchesFound')),
            findsNothing,
          );
          expect(
            find.byKey(const Key('noResults')),
            findsNothing,
          );
        },
      );
      testWidgets(
        'GIVEN initial state '
        'WHEN not-empty search performed '
        'THEN should call search function',
        (tester) async {
          when(() => notifier.value)
              .thenReturn(const SearchPageState.initial());
          await tester.pumpWidget(_getWidget());
          await tester.pump();

          when(() => notifier.searchByKeyword('text')).thenAnswer(
            (_) => Future.value(),
          );

          await tester.enterText(find.byType(TextField), 'text');
          await tester.pumpAndSettle();
          await tester.tap(find.byIcon(Icons.search));
          await tester.pumpAndSettle();

          verify(() => notifier.searchByKeyword('text')).called(1);
        },
      );

      testWidgets(
        'GIVEN loading state '
        'THEN display loader',
        (tester) async {
          when(() => notifier.value)
              .thenReturn(const SearchPageState.loading());

          await tester.pumpWidget(_getWidget());
          await tester.pump();
          expect(
            find.byKey(const Key('searchKey')),
            findsOneWidget,
          );
          expect(
            find.byKey(const Key('loading')),
            findsOneWidget,
          );
          expect(
            find.byKey(const Key('error')),
            findsNothing,
          );
          expect(
            find.byKey(const Key('matchesFound')),
            findsNothing,
          );
          expect(
            find.byKey(const Key('noResults')),
            findsNothing,
          );
        },
      );

      testWidgets(
        'GIVEN no data state '
        'THEN display no data state',
        (tester) async {
          when(() => notifier.value)
              .thenReturn(const SearchPageState.noResults());

          await tester.pumpWidget(_getWidget());
          await tester.pump();
          expect(
            find.byKey(const Key('searchKey')),
            findsOneWidget,
          );
          expect(
            find.byKey(const Key('loading')),
            findsNothing,
          );
          expect(
            find.byKey(const Key('error')),
            findsNothing,
          );
          expect(
            find.byKey(const Key('matchesFound')),
            findsNothing,
          );
          expect(
            find.byKey(const Key('noResults')),
            findsOneWidget,
          );
        },
      );
      testWidgets(
        'GIVEN error state '
        'THEN display error state',
        (tester) async {
          when(() => notifier.value).thenReturn(const SearchPageState.error());

          await tester.pumpWidget(_getWidget());
          await tester.pump();
          expect(
            find.byKey(const Key('searchKey')),
            findsOneWidget,
          );
          expect(
            find.byKey(const Key('loading')),
            findsNothing,
          );
          expect(
            find.byKey(const Key('error')),
            findsOneWidget,
          );
          expect(
            find.byKey(const Key('matchesFound')),
            findsNothing,
          );
          expect(
            find.byKey(const Key('noResults')),
            findsNothing,
          );
        },
      );

      testWidgets(
        'GIVEN matches found state '
        'THEN display all the matches data state',
        (tester) async {
          when(() => notifier.value).thenReturn(
            const SearchPageState.matchesFound(
              matchData,
            ),
          );

          await tester.pumpWidget(_getWidget());
          await tester.pump();
          expect(
            find.byKey(const Key('searchKey')),
            findsOneWidget,
          );
          expect(
            find.byKey(const Key('loading')),
            findsNothing,
          );
          expect(
            find.byKey(const Key('error')),
            findsNothing,
          );
          expect(
            find.byKey(const Key('matchesFound')),
            findsOneWidget,
          );
          expect(
            find.byKey(const Key('noResults')),
            findsNothing,
          );

          for (final match in matchData) {
            expect(find.text(match.name), findsOneWidget);
            expect(find.text(match.url), findsOneWidget);
          }
        },
      );

      testWidgets(
        'GIVEN empty text field '
        'WHEN text entered '
        'THEN display text clear widget',
        (tester) async {
          when(() => notifier.value).thenReturn(
            const SearchPageState.initial(),
          );

          await tester.pumpWidget(_getWidget());
          await tester.pump();

          expect(find.byIcon(Icons.close), findsNothing);

          await tester.enterText(find.byType(TextField), 'aaaa');
          await tester.pump();
          expect(find.byIcon(Icons.close), findsOneWidget);
        },
      );

      testWidgets(
        'GIVEN filled text field '
        'WHEN text clear button tapped '
        'THEN text should be cleared',
        (tester) async {
          when(() => notifier.value).thenReturn(
            const SearchPageState.initial(),
          );

          await tester.pumpWidget(_getWidget());
          await tester.pump();

          expect(find.byIcon(Icons.close), findsNothing);

          await tester.enterText(find.byType(TextField), 'aaaa');
          await tester.pump();
          expect(find.text('aaaa'), findsOneWidget);
          await tester.tap(find.byIcon(Icons.close));
          await tester.pump();
          expect(find.text('aaaa'), findsNothing);
        },
      );
    },
  );
}
