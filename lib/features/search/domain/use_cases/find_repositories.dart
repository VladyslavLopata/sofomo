import 'package:injectable/injectable.dart';
import 'package:sofomo/features/search/data/models/repository.dart';
import 'package:sofomo/features/search/data/repositories/search_repository.dart';

@singleton
class FindRepositories {
  const FindRepositories(this._searchRepository);

  final SearchRepository _searchRepository;

  Future<List<Repository>?> call(String keyword) async {
    if (keyword.isEmpty) return null;
    return _searchRepository.findRepositories(keyword);
  }
}
