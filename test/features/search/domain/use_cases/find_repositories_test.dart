import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sofomo/features/search/data/models/repository.dart';
import 'package:sofomo/features/search/data/repositories/search_repository.dart';
import 'package:sofomo/features/search/domain/use_cases/find_repositories.dart';

class MockSearchRepository extends Mock implements SearchRepository {}

void main() {
  final repository = MockSearchRepository();
  final findRepositories = FindRepositories(repository);
  group(
    'FindRepositories tests',
    () {
      test(
        'GIVEN class is called '
        'WHEN keyword is empty '
        'THEN should return null',
        () async {
          final result = await findRepositories.call('');
          expect(result, null);
        },
      );

      test(
        'GIVEN class is called '
        'WHEN keyword is not empty '
        'THEN should pass mocked data',
        () async {
          when(() => repository.findRepositories(any())).thenAnswer(
            (_) async => [],
          );
          final result = await findRepositories.call('a');
          expect(result, <Repository>[]);
        },
      );
    },
  );
}
