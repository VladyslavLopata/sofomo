import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sofomo/core/api/api_description.dart';
import 'package:sofomo/features/search/data/models/repository.dart';
import 'package:sofomo/features/search/data/repositories/search_repository.dart';

class MockRestClient extends Mock implements RestClient {}

class FakeResponse extends Mock implements RepositoryWrapper {}

void main() {
  final client = MockRestClient();
  final fakeResponse = FakeResponse();
  final repository = SearchRepository(client);

  group(
    'SearchRepository tests',
    () {
      test(
        'GIVEN findRepositories is called '
        'WHEN there is no error '
        'THEN should properly pass data',
        () async {
          when(() => client.getRepositories(any(), any())).thenAnswer(
            (_) async => fakeResponse,
          );
          when(() => fakeResponse.items).thenReturn([]);
          final response = await repository.findRepositories('a');
          expect(response, <Repository>[]);
        },
      );
      test(
        'GIVEN findRepositories is called '
        'WHEN there an error '
        'THEN should properly handle error',
        () async {
          when(() => client.getRepositories(any(), any()))
              .thenThrow(Exception());

          final response = await repository.findRepositories('a');

          expect(response, null);
        },
      );
    },
  );
}
