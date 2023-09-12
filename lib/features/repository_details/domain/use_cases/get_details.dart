import 'package:injectable/injectable.dart';
import 'package:sofomo/features/repository_details/data/repositories/repository_details_repository.dart';
import 'package:sofomo/features/repository_details/domain/models/full_repository_details.dart';

@singleton
class GetDetails {
  const GetDetails(this._detailsRepository);

  final RepositoryDetailsRepository _detailsRepository;

  Future<FullRepositoryDetails?> call(
    String login,
    String repositoryName,
  ) async {
    final response = await _detailsRepository.getDetails(login, repositoryName);

    if (response == null) return null;

    final (details, pulls, issues) = response;
    return FullRepositoryDetails(
      name: details.name,
      size: details.size,
      description: details.description,
      issues: issues,
      pulls: pulls,
    );
  }
}
