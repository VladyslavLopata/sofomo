// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepositoryDetails _$$_RepositoryDetailsFromJson(Map<String, dynamic> json) =>
    _$_RepositoryDetails(
      name: json['name'] as String,
      size: json['size'] as int,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_RepositoryDetailsToJson(
        _$_RepositoryDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'size': instance.size,
      'description': instance.description,
    };

_$_PullRequest _$$_PullRequestFromJson(Map<String, dynamic> json) =>
    _$_PullRequest(
      title: json['title'] as String,
      number: json['number'] as int,
      url: json['html_url'] as String,
    );

Map<String, dynamic> _$$_PullRequestToJson(_$_PullRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'number': instance.number,
      'html_url': instance.url,
    };

_$_Issue _$$_IssueFromJson(Map<String, dynamic> json) => _$_Issue(
      title: json['title'] as String,
      number: json['number'] as int,
      url: json['html_url'] as String,
    );

Map<String, dynamic> _$$_IssueToJson(_$_Issue instance) => <String, dynamic>{
      'title': instance.title,
      'number': instance.number,
      'html_url': instance.url,
    };
