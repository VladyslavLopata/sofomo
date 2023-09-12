// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryWrapper _$RepositoryWrapperFromJson(Map<String, dynamic> json) {
  return _RepositoryWrapper.fromJson(json);
}

/// @nodoc
mixin _$RepositoryWrapper {
  List<Repository> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryWrapperCopyWith<RepositoryWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryWrapperCopyWith<$Res> {
  factory $RepositoryWrapperCopyWith(
          RepositoryWrapper value, $Res Function(RepositoryWrapper) then) =
      _$RepositoryWrapperCopyWithImpl<$Res, RepositoryWrapper>;
  @useResult
  $Res call({List<Repository> items});
}

/// @nodoc
class _$RepositoryWrapperCopyWithImpl<$Res, $Val extends RepositoryWrapper>
    implements $RepositoryWrapperCopyWith<$Res> {
  _$RepositoryWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepositoryWrapperCopyWith<$Res>
    implements $RepositoryWrapperCopyWith<$Res> {
  factory _$$_RepositoryWrapperCopyWith(_$_RepositoryWrapper value,
          $Res Function(_$_RepositoryWrapper) then) =
      __$$_RepositoryWrapperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Repository> items});
}

/// @nodoc
class __$$_RepositoryWrapperCopyWithImpl<$Res>
    extends _$RepositoryWrapperCopyWithImpl<$Res, _$_RepositoryWrapper>
    implements _$$_RepositoryWrapperCopyWith<$Res> {
  __$$_RepositoryWrapperCopyWithImpl(
      _$_RepositoryWrapper _value, $Res Function(_$_RepositoryWrapper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_RepositoryWrapper(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepositoryWrapper implements _RepositoryWrapper {
  const _$_RepositoryWrapper({required final List<Repository> items})
      : _items = items;

  factory _$_RepositoryWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoryWrapperFromJson(json);

  final List<Repository> _items;
  @override
  List<Repository> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'RepositoryWrapper(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepositoryWrapper &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepositoryWrapperCopyWith<_$_RepositoryWrapper> get copyWith =>
      __$$_RepositoryWrapperCopyWithImpl<_$_RepositoryWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoryWrapperToJson(
      this,
    );
  }
}

abstract class _RepositoryWrapper implements RepositoryWrapper {
  const factory _RepositoryWrapper({required final List<Repository> items}) =
      _$_RepositoryWrapper;

  factory _RepositoryWrapper.fromJson(Map<String, dynamic> json) =
      _$_RepositoryWrapper.fromJson;

  @override
  List<Repository> get items;
  @override
  @JsonKey(ignore: true)
  _$$_RepositoryWrapperCopyWith<_$_RepositoryWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

/// @nodoc
mixin _$Repository {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get url => throw _privateConstructorUsedError;
  Owner get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryCopyWith<Repository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res, Repository>;
  @useResult
  $Res call({String name, @JsonKey(name: 'html_url') String url, Owner owner});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepositoryCopyWithImpl<$Res, $Val extends Repository>
    implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RepositoryCopyWith<$Res>
    implements $RepositoryCopyWith<$Res> {
  factory _$$_RepositoryCopyWith(
          _$_Repository value, $Res Function(_$_Repository) then) =
      __$$_RepositoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @JsonKey(name: 'html_url') String url, Owner owner});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_RepositoryCopyWithImpl<$Res>
    extends _$RepositoryCopyWithImpl<$Res, _$_Repository>
    implements _$$_RepositoryCopyWith<$Res> {
  __$$_RepositoryCopyWithImpl(
      _$_Repository _value, $Res Function(_$_Repository) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? owner = null,
  }) {
    return _then(_$_Repository(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Repository implements _Repository {
  const _$_Repository(
      {required this.name,
      @JsonKey(name: 'html_url') required this.url,
      required this.owner});

  factory _$_Repository.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoryFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'html_url')
  final String url;
  @override
  final Owner owner;

  @override
  String toString() {
    return 'Repository(name: $name, url: $url, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repository &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepositoryCopyWith<_$_Repository> get copyWith =>
      __$$_RepositoryCopyWithImpl<_$_Repository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoryToJson(
      this,
    );
  }
}

abstract class _Repository implements Repository {
  const factory _Repository(
      {required final String name,
      @JsonKey(name: 'html_url') required final String url,
      required final Owner owner}) = _$_Repository;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$_Repository.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'html_url')
  String get url;
  @override
  Owner get owner;
  @override
  @JsonKey(ignore: true)
  _$$_RepositoryCopyWith<_$_Repository> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  String get login => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call({String login});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$_OwnerCopyWith(_$_Owner value, $Res Function(_$_Owner) then) =
      __$$_OwnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login});
}

/// @nodoc
class __$$_OwnerCopyWithImpl<$Res> extends _$OwnerCopyWithImpl<$Res, _$_Owner>
    implements _$$_OwnerCopyWith<$Res> {
  __$$_OwnerCopyWithImpl(_$_Owner _value, $Res Function(_$_Owner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
  }) {
    return _then(_$_Owner(
      null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Owner implements _Owner {
  const _$_Owner(this.login);

  factory _$_Owner.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerFromJson(json);

  @override
  final String login;

  @override
  String toString() {
    return 'Owner(login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Owner &&
            (identical(other.login, login) || other.login == login));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      __$$_OwnerCopyWithImpl<_$_Owner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner(final String login) = _$_Owner;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$_Owner.fromJson;

  @override
  String get login;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      throw _privateConstructorUsedError;
}
