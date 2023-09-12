// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepositoryWrapper _$$_RepositoryWrapperFromJson(Map<String, dynamic> json) =>
    _$_RepositoryWrapper(
      items: (json['items'] as List<dynamic>)
          .map((e) => Repository.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RepositoryWrapperToJson(
        _$_RepositoryWrapper instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_Repository _$$_RepositoryFromJson(Map<String, dynamic> json) =>
    _$_Repository(
      name: json['name'] as String,
      url: json['html_url'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RepositoryToJson(_$_Repository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'html_url': instance.url,
      'owner': instance.owner,
    };

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      json['login'] as String,
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      'login': instance.login,
    };
