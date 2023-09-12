import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sofomo/features/repository_details/data/models/repository_details.dart';
import 'package:sofomo/features/repository_details/data/repositories/repository_details_repository.dart';
import 'package:sofomo/features/repository_details/domain/models/full_repository_details.dart';
import 'package:sofomo/features/repository_details/domain/use_cases/get_details.dart';

class MockRepositoryDetailsRepository extends Mock
    implements RepositoryDetailsRepository {}

void main() {
  group(
    'GetDetails tests',
    () {
      final mockRepository = MockRepositoryDetailsRepository();
      final getDetails = GetDetails(mockRepository);

      test(
        'WHEN getDetails is called '
        'THEN itreturns full repository details',
        () async {
          const login = 'owner';
          const repositoryName = 'repository';
          const repositoryDetails = RepositoryDetails(
            name: 'name',
            size: 100,
            description: 'description',
          );
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

          when(() => mockRepository.getDetails(login, repositoryName))
              .thenAnswer(
            (_) async => (repositoryDetails, pullRequests, issues),
          );

          final result = await getDetails(login, repositoryName);

          expect(result, isA<FullRepositoryDetails>());
          expect(result!.name, repositoryDetails.name);
          expect(result.size, repositoryDetails.size);
          expect(result.issues, issues);
          expect(result.pulls, pullRequests);
        },
      );

      test(
        'GIVEN getDetails is called '
        'WHEN there is  null response from RepositoryDetailsRepository '
        'THEN should handle it properly',
        () async {
          const login = 'owner';
          const repositoryName = 'repository';

          when(() => mockRepository.getDetails(login, repositoryName))
              .thenAnswer((_) async => null);

          final result = await getDetails(login, repositoryName);

          expect(result, isNull);
        },
      );
    },
  );
}
