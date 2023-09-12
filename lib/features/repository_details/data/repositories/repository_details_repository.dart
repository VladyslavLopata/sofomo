import 'package:injectable/injectable.dart';
import 'package:sofomo/core/api/api_description.dart';
import 'package:sofomo/features/repository_details/data/models/repository_details.dart';

const _dataPerPage = 20;

@singleton
class RepositoryDetailsRepository {
  RepositoryDetailsRepository(this._client);
  final RestClient _client;

  Future<(RepositoryDetails, List<PullRequest>?, List<Issue>?)?> getDetails(
    String login,
    String repositoryName,
  ) async {
    final RepositoryDetails details;
    try {
      details = await _client.getRepoDetails(
        login,
        repositoryName,
      );
    } catch (_) {
      return null;
    }

    List<PullRequest>? pulls;
    try {
      pulls = await _client.getPulls(
        login,
        repositoryName,
        _dataPerPage,
      );
    } catch (_) {}

    List<Issue>? issues;
    try {
      issues = await _client.getIssues(
        login,
        repositoryName,
        _dataPerPage,
      );
    } catch (_) {}

    return (details, pulls, issues);
  }
}
