import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sofomo/features/repository_details/data/models/repository_details.dart';
import 'package:sofomo/features/repository_details/domain/models/full_repository_details.dart';
import 'package:sofomo/features/repository_details/domain/use_cases/get_details.dart';
import 'package:sofomo/features/repository_details/presentation/notifiers/repository_details_notifier.dart';
import 'package:sofomo/features/repository_details/presentation/notifiers/repository_details_state.dart';

class MockGetDetails extends Mock implements GetDetails {}

void main() {
  group('RepositoryDetailsNotifier tests', () {
    final mockGetDetails = MockGetDetails();
    final notifier = RepositoryDetailsNotifier(
      mockGetDetails,
    );

    test('initialize sets loading state', () {
      when(
        () => mockGetDetails.call('owner', 'repository'),
      ).thenAnswer(
        (_) => Future<FullRepositoryDetails?>.value(),
      );

      notifier.initialize('owner', 'repository');

      expect(notifier.value, isA<LoadingRepositoryDetailsState>());
    });

    test('initialize sets data state on success', () async {
      const login = 'owner';
      const repositoryName = 'repository';

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
        name: 'name',
        size: 100,
        issues: issues,
        pulls: pullRequests,
        description: 'description',
      );

      when(() => mockGetDetails(login, repositoryName))
          .thenAnswer((_) async => mockResult);

      await notifier.initialize(login, repositoryName);

      expect(notifier.value, isA<DataRepositoryDetailsState>());
      expect(
        (notifier.value as DataRepositoryDetailsState).details,
        mockResult,
      );
    });

    test('initialize sets error state on failure', () async {
      when(() => mockGetDetails('owner', 'repository'))
          .thenAnswer((_) async => null);

      await notifier.initialize('owner', 'repository');

      expect(notifier.value, isA<ErrorRepositoryDetailsState>());
    });
  });
}
