import 'package:injectable/injectable.dart';
import 'package:sofomo/core/api/api_description.dart';
import 'package:sofomo/features/search/data/models/repository.dart';

const _dataPerPage = 20;

@singleton
class SearchRepository {
  const SearchRepository(this._client);

  final RestClient _client;

  Future<List<Repository>?> findRepositories(String keyword) async {
    try {
      final repositories = await _client.getRepositories(
        keyword,
        _dataPerPage,
      );
      return repositories.items;
    } catch (_) {
      return null;
    }
  }
}
