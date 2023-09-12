import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sofomo/features/repository_details/data/models/repository_details.dart';
import 'package:sofomo/features/repository_details/domain/models/full_repository_details.dart';
import 'package:sofomo/features/repository_details/presentation/notifiers/repository_details_notifier.dart';
import 'package:sofomo/features/repository_details/presentation/notifiers/repository_details_state.dart';
import 'package:sofomo/features/repository_details/presentation/repository_details_page.dart';

class MockRepositoryDetailsNotifier extends Mock
    implements RepositoryDetailsNotifier {}

void main() {
  tearDown(() {
    GetIt.I.reset();
  });

  group('RepositoryDetailsPage', () {
    testWidgets('renders loading state correctly', (tester) async {
      final notifier = MockRepositoryDetailsNotifier();
      when(() => notifier.initialize(any(), any())).thenAnswer((_) async {});
      when(() => notifier.value)
          .thenReturn(const RepositoryDetailsState.loading());
      GetIt.I.registerFactory<RepositoryDetailsNotifier>(() => notifier);

      await tester.pumpWidget(
        const MaterialApp(
          home: RepositoryDetailsPage(
            login: 'owner',
            repositoryName: 'repository',
          ),
        ),
      );

      expect(find.text('An error occured while fetching data.'), findsNothing);
      expect(find.text('Try Again'), findsNothing);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders data state correctly', (WidgetTester tester) async {
      const pullRequests = [
        PullRequest(
          title: 'title',
          number: 23,
          url: 'url',
        ),
      ];
      const issues = [
        Issue(title: 'title', number: 12, url: 'url'),
      ];

      const mockResult = FullRepositoryDetails(
        name: 'repository',
        size: 100,
        issues: issues,
        pulls: pullRequests,
        description: 'description',
      );
      final notifier = MockRepositoryDetailsNotifier();
      when(() => notifier.initialize(any(), any())).thenAnswer((_) async {});
      when(() => notifier.value).thenReturn(
        const RepositoryDetailsState.data(
          mockResult,
        ),
      );
      GetIt.I.registerFactory<RepositoryDetailsNotifier>(() => notifier);

      await tester.pumpWidget(
        const MaterialApp(
          home: RepositoryDetailsPage(
            login: 'owner',
            repositoryName: 'repository',
          ),
        ),
      );

      expect(find.text('An error occured while fetching data.'), findsNothing);
      expect(find.text('Try Again'), findsNothing);
      expect(find.byType(CircularProgressIndicator), findsNothing);
      expect(
        find.text('repository'),
        findsOneWidget,
      );
    });

    testWidgets('renders error state correctly', (WidgetTester tester) async {
      final notifier = MockRepositoryDetailsNotifier();
      GetIt.I.registerFactory<RepositoryDetailsNotifier>(() => notifier);
      when(() => notifier.value)
          .thenReturn(const RepositoryDetailsState.error());
      when(() => notifier.initialize(any(), any())).thenAnswer((_) async {});

      await tester.pumpWidget(
        const MaterialApp(
          home: RepositoryDetailsPage(
            login: 'owner',
            repositoryName: 'repository',
          ),
        ),
      );

      expect(
        find.text('An error occured while fetching data.'),
        findsOneWidget,
      );
      expect(find.text('Try Again'), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsNothing);
    });
  });
}
