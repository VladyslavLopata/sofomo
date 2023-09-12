import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sofomo/core/api/api_description.dart';
import 'package:sofomo/features/repository_details/data/models/repository_details.dart';
import 'package:sofomo/features/repository_details/data/repositories/repository_details_repository.dart';

class MockRestClient extends Mock implements RestClient {}

void main() {
  group(
    'RepositoryDetailsRepository tests',
    () {
      final mockClient = MockRestClient();
      final repository = RepositoryDetailsRepository(mockClient);

      test(
        'WHEN getDetails is called '
        'THEN should return details, pulls, and issues',
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

          when(() => mockClient.getRepoDetails(login, repositoryName))
              .thenAnswer((_) async => repositoryDetails);
          when(() => mockClient.getPulls(login, repositoryName, any()))
              .thenAnswer((_) async => pullRequests);
          when(() => mockClient.getIssues(login, repositoryName, any()))
              .thenAnswer((_) async => issues);

          final result = await repository.getDetails(login, repositoryName);

          expect(result, isNotNull);
          expect(result!.$1, repositoryDetails);
          expect(result.$2, pullRequests);
          expect(result.$3, issues);
        },
      );

      test(
        'getDetails handles RestClient exceptions',
        () async {
          const login = 'owner';
          const repositoryName = 'repository';

          when(() => mockClient.getRepoDetails(login, repositoryName))
              .thenThrow(Exception());
          when(() => mockClient.getPulls(login, repositoryName, any()))
              .thenThrow(Exception());
          when(() => mockClient.getIssues(login, repositoryName, any()))
              .thenThrow(Exception());

          final result = await repository.getDetails(login, repositoryName);

          expect(result, isNull);
        },
      );
    },
  );
}
