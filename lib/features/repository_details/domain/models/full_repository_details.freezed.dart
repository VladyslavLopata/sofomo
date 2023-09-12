// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_repository_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FullRepositoryDetails {
  String get name => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Issue>? get issues => throw _privateConstructorUsedError;
  List<PullRequest>? get pulls => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FullRepositoryDetailsCopyWith<FullRepositoryDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullRepositoryDetailsCopyWith<$Res> {
  factory $FullRepositoryDetailsCopyWith(FullRepositoryDetails value,
          $Res Function(FullRepositoryDetails) then) =
      _$FullRepositoryDetailsCopyWithImpl<$Res, FullRepositoryDetails>;
  @useResult
  $Res call(
      {String name,
      int size,
      String description,
      List<Issue>? issues,
      List<PullRequest>? pulls});
}

/// @nodoc
class _$FullRepositoryDetailsCopyWithImpl<$Res,
        $Val extends FullRepositoryDetails>
    implements $FullRepositoryDetailsCopyWith<$Res> {
  _$FullRepositoryDetailsCopyWithImpl(this._value, this._then);

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
    Object? issues = freezed,
    Object? pulls = freezed,
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
      issues: freezed == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>?,
      pulls: freezed == pulls
          ? _value.pulls
          : pulls // ignore: cast_nullable_to_non_nullable
              as List<PullRequest>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FullRepositoryDetailsCopyWith<$Res>
    implements $FullRepositoryDetailsCopyWith<$Res> {
  factory _$$_FullRepositoryDetailsCopyWith(_$_FullRepositoryDetails value,
          $Res Function(_$_FullRepositoryDetails) then) =
      __$$_FullRepositoryDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int size,
      String description,
      List<Issue>? issues,
      List<PullRequest>? pulls});
}

/// @nodoc
class __$$_FullRepositoryDetailsCopyWithImpl<$Res>
    extends _$FullRepositoryDetailsCopyWithImpl<$Res, _$_FullRepositoryDetails>
    implements _$$_FullRepositoryDetailsCopyWith<$Res> {
  __$$_FullRepositoryDetailsCopyWithImpl(_$_FullRepositoryDetails _value,
      $Res Function(_$_FullRepositoryDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? size = null,
    Object? description = null,
    Object? issues = freezed,
    Object? pulls = freezed,
  }) {
    return _then(_$_FullRepositoryDetails(
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
      issues: freezed == issues
          ? _value._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>?,
      pulls: freezed == pulls
          ? _value._pulls
          : pulls // ignore: cast_nullable_to_non_nullable
              as List<PullRequest>?,
    ));
  }
}

/// @nodoc

class _$_FullRepositoryDetails implements _FullRepositoryDetails {
  const _$_FullRepositoryDetails(
      {required this.name,
      required this.size,
      required this.description,
      required final List<Issue>? issues,
      required final List<PullRequest>? pulls})
      : _issues = issues,
        _pulls = pulls;

  @override
  final String name;
  @override
  final int size;
  @override
  final String description;
  final List<Issue>? _issues;
  @override
  List<Issue>? get issues {
    final value = _issues;
    if (value == null) return null;
    if (_issues is EqualUnmodifiableListView) return _issues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PullRequest>? _pulls;
  @override
  List<PullRequest>? get pulls {
    final value = _pulls;
    if (value == null) return null;
    if (_pulls is EqualUnmodifiableListView) return _pulls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FullRepositoryDetails(name: $name, size: $size, description: $description, issues: $issues, pulls: $pulls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullRepositoryDetails &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._issues, _issues) &&
            const DeepCollectionEquality().equals(other._pulls, _pulls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      size,
      description,
      const DeepCollectionEquality().hash(_issues),
      const DeepCollectionEquality().hash(_pulls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FullRepositoryDetailsCopyWith<_$_FullRepositoryDetails> get copyWith =>
      __$$_FullRepositoryDetailsCopyWithImpl<_$_FullRepositoryDetails>(
          this, _$identity);
}

abstract class _FullRepositoryDetails implements FullRepositoryDetails {
  const factory _FullRepositoryDetails(
      {required final String name,
      required final int size,
      required final String description,
      required final List<Issue>? issues,
      required final List<PullRequest>? pulls}) = _$_FullRepositoryDetails;

  @override
  String get name;
  @override
  int get size;
  @override
  String get description;
  @override
  List<Issue>? get issues;
  @override
  List<PullRequest>? get pulls;
  @override
  @JsonKey(ignore: true)
  _$$_FullRepositoryDetailsCopyWith<_$_FullRepositoryDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
