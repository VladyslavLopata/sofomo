import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sofomo/features/repository_details/data/models/repository_details.dart';

part 'full_repository_details.freezed.dart';

@freezed
class FullRepositoryDetails with _$FullRepositoryDetails {
  const factory FullRepositoryDetails({
    required String name,
    required int size,
    required String description,
    required List<Issue>? issues,
    required List<PullRequest>? pulls,
  }) = _FullRepositoryDetails;
}
