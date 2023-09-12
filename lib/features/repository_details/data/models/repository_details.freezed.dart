// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryDetails _$RepositoryDetailsFromJson(Map<String, dynamic> json) {
  return _RepositoryDetails.fromJson(json);
}

/// @nodoc
mixin _$RepositoryDetails {
  String get name => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryDetailsCopyWith<RepositoryDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryDetailsCopyWith<$Res> {
  factory $RepositoryDetailsCopyWith(
          RepositoryDetails value, $Res Function(RepositoryDetails) then) =
      _$RepositoryDetailsCopyWithImpl<$Res, RepositoryDetails>;
  @useResult
  $Res call({String name, int size, String description});
}

/// @nodoc
class _$RepositoryDetailsCopyWithImpl<$Res, $Val extends RepositoryDetails>
    implements $RepositoryDetailsCopyWith<$Res> {
  _$RepositoryDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? size = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepositoryDetailsCopyWith<$Res>
    implements $RepositoryDetailsCopyWith<$Res> {
  factory _$$_RepositoryDetailsCopyWith(_$_RepositoryDetails value,
          $Res Function(_$_RepositoryDetails) then) =
      __$$_RepositoryDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int size, String description});
}

/// @nodoc
class __$$_RepositoryDetailsCopyWithImpl<$Res>
    extends _$RepositoryDetailsCopyWithImpl<$Res, _$_RepositoryDetails>
    implements _$$_RepositoryDetailsCopyWith<$Res> {
  __$$_RepositoryDetailsCopyWithImpl(
      _$_RepositoryDetails _value, $Res Function(_$_RepositoryDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? size = null,
    Object? description = null,
  }) {
    return _then(_$_RepositoryDetails(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepositoryDetails implements _RepositoryDetails {
  const _$_RepositoryDetails(
      {required this.name, required this.size, required this.description});

  factory _$_RepositoryDetails.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoryDetailsFromJson(json);

  @override
  final String name;
  @override
  final int size;
  @override
  final String description;

  @override
  String toString() {
    return 'RepositoryDetails(name: $name, size: $size, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepositoryDetails &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, size, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepositoryDetailsCopyWith<_$_RepositoryDetails> get copyWith =>
      __$$_RepositoryDetailsCopyWithImpl<_$_RepositoryDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoryDetailsToJson(
      this,
    );
  }
}

abstract class _RepositoryDetails implements RepositoryDetails {
  const factory _RepositoryDetails(
      {required final String name,
      required final int size,
      required final String description}) = _$_RepositoryDetails;

  factory _RepositoryDetails.fromJson(Map<String, dynamic> json) =
      _$_RepositoryDetails.fromJson;

  @override
  String get name;
  @override
  int get size;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_RepositoryDetailsCopyWith<_$_RepositoryDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

PullRequest _$PullRequestFromJson(Map<String, dynamic> json) {
  return _PullRequest.fromJson(json);
}

/// @nodoc
mixin _$PullRequest {
  String get title => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PullRequestCopyWith<PullRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PullRequestCopyWith<$Res> {
  factory $PullRequestCopyWith(
          PullRequest value, $Res Function(PullRequest) then) =
      _$PullRequestCopyWithImpl<$Res, PullRequest>;
  @useResult
  $Res call({String title, int number, @JsonKey(name: 'html_url') String url});
}

/// @nodoc
class _$PullRequestCopyWithImpl<$Res, $Val extends PullRequest>
    implements $PullRequestCopyWith<$Res> {
  _$PullRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? number = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PullRequestCopyWith<$Res>
    implements $PullRequestCopyWith<$Res> {
  factory _$$_PullRequestCopyWith(
          _$_PullRequest value, $Res Function(_$_PullRequest) then) =
      __$$_PullRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int number, @JsonKey(name: 'html_url') String url});
}

/// @nodoc
class __$$_PullRequestCopyWithImpl<$Res>
    extends _$PullRequestCopyWithImpl<$Res, _$_PullRequest>
    implements _$$_PullRequestCopyWith<$Res> {
  __$$_PullRequestCopyWithImpl(
      _$_PullRequest _value, $Res Function(_$_PullRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? number = null,
    Object? url = null,
  }) {
    return _then(_$_PullRequest(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PullRequest implements _PullRequest {
  const _$_PullRequest(
      {required this.title,
      required this.number,
      @JsonKey(name: 'html_url') required this.url});

  factory _$_PullRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PullRequestFromJson(json);

  @override
  final String title;
  @override
  final int number;
  @override
  @JsonKey(name: 'html_url')
  final String url;

  @override
  String toString() {
    return 'PullRequest(title: $title, number: $number, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PullRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, number, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PullRequestCopyWith<_$_PullRequest> get copyWith =>
      __$$_PullRequestCopyWithImpl<_$_PullRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PullRequestToJson(
      this,
    );
  }
}

abstract class _PullRequest implements PullRequest, IRepoArtifact {
  const factory _PullRequest(
      {required final String title,
      required final int number,
      @JsonKey(name: 'html_url') required final String url}) = _$_PullRequest;

  factory _PullRequest.fromJson(Map<String, dynamic> json) =
      _$_PullRequest.fromJson;

  @override
  String get title;
  @override
  int get number;
  @override
  @JsonKey(name: 'html_url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PullRequestCopyWith<_$_PullRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

Issue _$IssueFromJson(Map<String, dynamic> json) {
  return _Issue.fromJson(json);
}

/// @nodoc
mixin _$Issue {
  String get title => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssueCopyWith<Issue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res, Issue>;
  @useResult
  $Res call({String title, int number, @JsonKey(name: 'html_url') String url});
}

/// @nodoc
class _$IssueCopyWithImpl<$Res, $Val extends Issue>
    implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? number = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$$_IssueCopyWith(_$_Issue value, $Res Function(_$_Issue) then) =
      __$$_IssueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int number, @JsonKey(name: 'html_url') String url});
}

/// @nodoc
class __$$_IssueCopyWithImpl<$Res> extends _$IssueCopyWithImpl<$Res, _$_Issue>
    implements _$$_IssueCopyWith<$Res> {
  __$$_IssueCopyWithImpl(_$_Issue _value, $Res Function(_$_Issue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? number = null,
    Object? url = null,
  }) {
    return _then(_$_Issue(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Issue implements _Issue {
  const _$_Issue(
      {required this.title,
      required this.number,
      @JsonKey(name: 'html_url') required this.url});

  factory _$_Issue.fromJson(Map<String, dynamic> json) =>
      _$$_IssueFromJson(json);

  @override
  final String title;
  @override
  final int number;
  @override
  @JsonKey(name: 'html_url')
  final String url;

  @override
  String toString() {
    return 'Issue(title: $title, number: $number, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Issue &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, number, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IssueCopyWith<_$_Issue> get copyWith =>
      __$$_IssueCopyWithImpl<_$_Issue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IssueToJson(
      this,
    );
  }
}

abstract class _Issue implements Issue, IRepoArtifact {
  const factory _Issue(
      {required final String title,
      required final int number,
      @JsonKey(name: 'html_url') required final String url}) = _$_Issue;

  factory _Issue.fromJson(Map<String, dynamic> json) = _$_Issue.fromJson;

  @override
  String get title;
  @override
  int get number;
  @override
  @JsonKey(name: 'html_url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_IssueCopyWith<_$_Issue> get copyWith =>
      throw _privateConstructorUsedError;
}
