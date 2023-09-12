// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_details.freezed.dart';
part 'repository_details.g.dart';

@freezed
class RepositoryDetails with _$RepositoryDetails {
  const factory RepositoryDetails({
    required String name,
    required int size,
    required String description,
  }) = _RepositoryDetails;

  factory RepositoryDetails.fromJson(Map<String, dynamic> json) =>
      _$RepositoryDetailsFromJson(json);
}

abstract class IRepoArtifact {
  const IRepoArtifact({
    required this.title,
    required this.number,
    required this.url,
  });

  final String title;
  final int number;
  final String url;
}

@freezed
class PullRequest with _$PullRequest {
  @Implements<IRepoArtifact>()
  const factory PullRequest({
    required String title,
    required int number,
    @JsonKey(name: 'html_url') required String url,
  }) = _PullRequest;

  factory PullRequest.fromJson(Map<String, dynamic> json) =>
      _$PullRequestFromJson(json);
}

@freezed
class Issue with _$Issue {
  @Implements<IRepoArtifact>()
  const factory Issue({
    required String title,
    required int number,
    @JsonKey(name: 'html_url') required String url,
  }) = _Issue;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
