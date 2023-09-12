// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepositoryDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(FullRepositoryDetails details) data,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(FullRepositoryDetails details)? data,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FullRepositoryDetails details)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingRepositoryDetailsState value) loading,
    required TResult Function(DataRepositoryDetailsState value) data,
    required TResult Function(ErrorRepositoryDetailsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingRepositoryDetailsState value)? loading,
    TResult? Function(DataRepositoryDetailsState value)? data,
    TResult? Function(ErrorRepositoryDetailsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingRepositoryDetailsState value)? loading,
    TResult Function(DataRepositoryDetailsState value)? data,
    TResult Function(ErrorRepositoryDetailsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryDetailsStateCopyWith<$Res> {
  factory $RepositoryDetailsStateCopyWith(RepositoryDetailsState value,
          $Res Function(RepositoryDetailsState) then) =
      _$RepositoryDetailsStateCopyWithImpl<$Res, RepositoryDetailsState>;
}

/// @nodoc
class _$RepositoryDetailsStateCopyWithImpl<$Res,
        $Val extends RepositoryDetailsState>
    implements $RepositoryDetailsStateCopyWith<$Res> {
  _$RepositoryDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingRepositoryDetailsStateCopyWith<$Res> {
  factory _$$LoadingRepositoryDetailsStateCopyWith(
          _$LoadingRepositoryDetailsState value,
          $Res Function(_$LoadingRepositoryDetailsState) then) =
      __$$LoadingRepositoryDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingRepositoryDetailsStateCopyWithImpl<$Res>
    extends _$RepositoryDetailsStateCopyWithImpl<$Res,
        _$LoadingRepositoryDetailsState>
    implements _$$LoadingRepositoryDetailsStateCopyWith<$Res> {
  __$$LoadingRepositoryDetailsStateCopyWithImpl(
      _$LoadingRepositoryDetailsState _value,
      $Res Function(_$LoadingRepositoryDetailsState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingRepositoryDetailsState implements LoadingRepositoryDetailsState {
  const _$LoadingRepositoryDetailsState();

  @override
  String toString() {
    return 'RepositoryDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingRepositoryDetailsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(FullRepositoryDetails details) data,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(FullRepositoryDetails details)? data,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FullRepositoryDetails details)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingRepositoryDetailsState value) loading,
    required TResult Function(DataRepositoryDetailsState value) data,
    required TResult Function(ErrorRepositoryDetailsState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingRepositoryDetailsState value)? loading,
    TResult? Function(DataRepositoryDetailsState value)? data,
    TResult? Function(ErrorRepositoryDetailsState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingRepositoryDetailsState value)? loading,
    TResult Function(DataRepositoryDetailsState value)? data,
    TResult Function(ErrorRepositoryDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingRepositoryDetailsState implements RepositoryDetailsState {
  const factory LoadingRepositoryDetailsState() =
      _$LoadingRepositoryDetailsState;
}

/// @nodoc
abstract class _$$DataRepositoryDetailsStateCopyWith<$Res> {
  factory _$$DataRepositoryDetailsStateCopyWith(
          _$DataRepositoryDetailsState value,
          $Res Function(_$DataRepositoryDetailsState) then) =
      __$$DataRepositoryDetailsStateCopyWithImpl<$Res>;
  @useResult
  $Res call({FullRepositoryDetails details});

  $FullRepositoryDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$DataRepositoryDetailsStateCopyWithImpl<$Res>
    extends _$RepositoryDetailsStateCopyWithImpl<$Res,
        _$DataRepositoryDetailsState>
    implements _$$DataRepositoryDetailsStateCopyWith<$Res> {
  __$$DataRepositoryDetailsStateCopyWithImpl(
      _$DataRepositoryDetailsState _value,
      $Res Function(_$DataRepositoryDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
  }) {
    return _then(_$DataRepositoryDetailsState(
      null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as FullRepositoryDetails,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FullRepositoryDetailsCopyWith<$Res> get details {
    return $FullRepositoryDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc

class _$DataRepositoryDetailsState implements DataRepositoryDetailsState {
  const _$DataRepositoryDetailsState(this.details);

  @override
  final FullRepositoryDetails details;

  @override
  String toString() {
    return 'RepositoryDetailsState.data(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataRepositoryDetailsState &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataRepositoryDetailsStateCopyWith<_$DataRepositoryDetailsState>
      get copyWith => __$$DataRepositoryDetailsStateCopyWithImpl<
          _$DataRepositoryDetailsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(FullRepositoryDetails details) data,
    required TResult Function() error,
  }) {
    return data(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(FullRepositoryDetails details)? data,
    TResult? Function()? error,
  }) {
    return data?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FullRepositoryDetails details)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingRepositoryDetailsState value) loading,
    required TResult Function(DataRepositoryDetailsState value) data,
    required TResult Function(ErrorRepositoryDetailsState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingRepositoryDetailsState value)? loading,
    TResult? Function(DataRepositoryDetailsState value)? data,
    TResult? Function(ErrorRepositoryDetailsState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingRepositoryDetailsState value)? loading,
    TResult Function(DataRepositoryDetailsState value)? data,
    TResult Function(ErrorRepositoryDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataRepositoryDetailsState implements RepositoryDetailsState {
  const factory DataRepositoryDetailsState(
      final FullRepositoryDetails details) = _$DataRepositoryDetailsState;

  FullRepositoryDetails get details;
  @JsonKey(ignore: true)
  _$$DataRepositoryDetailsStateCopyWith<_$DataRepositoryDetailsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorRepositoryDetailsStateCopyWith<$Res> {
  factory _$$ErrorRepositoryDetailsStateCopyWith(
          _$ErrorRepositoryDetailsState value,
          $Res Function(_$ErrorRepositoryDetailsState) then) =
      __$$ErrorRepositoryDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorRepositoryDetailsStateCopyWithImpl<$Res>
    extends _$RepositoryDetailsStateCopyWithImpl<$Res,
        _$ErrorRepositoryDetailsState>
    implements _$$ErrorRepositoryDetailsStateCopyWith<$Res> {
  __$$ErrorRepositoryDetailsStateCopyWithImpl(
      _$ErrorRepositoryDetailsState _value,
      $Res Function(_$ErrorRepositoryDetailsState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorRepositoryDetailsState implements ErrorRepositoryDetailsState {
  const _$ErrorRepositoryDetailsState();

  @override
  String toString() {
    return 'RepositoryDetailsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorRepositoryDetailsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(FullRepositoryDetails details) data,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(FullRepositoryDetails details)? data,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FullRepositoryDetails details)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingRepositoryDetailsState value) loading,
    required TResult Function(DataRepositoryDetailsState value) data,
    required TResult Function(ErrorRepositoryDetailsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingRepositoryDetailsState value)? loading,
    TResult? Function(DataRepositoryDetailsState value)? data,
    TResult? Function(ErrorRepositoryDetailsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingRepositoryDetailsState value)? loading,
    TResult Function(DataRepositoryDetailsState value)? data,
    TResult Function(ErrorRepositoryDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorRepositoryDetailsState implements RepositoryDetailsState {
  const factory ErrorRepositoryDetailsState() = _$ErrorRepositoryDetailsState;
}
