// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
class RepositoryWrapper with _$RepositoryWrapper {
  const factory RepositoryWrapper({required List<Repository> items}) =
      _RepositoryWrapper;

  factory RepositoryWrapper.fromJson(Map<String, dynamic> json) =>
      _$RepositoryWrapperFromJson(json);
}

@freezed
class Repository with _$Repository {
  const factory Repository({
    required String name,
    @JsonKey(name: 'html_url') required String url,
    required Owner owner,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner(String login) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
