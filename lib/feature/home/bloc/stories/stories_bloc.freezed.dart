// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() first,
    required TResult Function() add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? first,
    TResult? Function()? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? first,
    TResult Function()? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_First value) first,
    required TResult Function(_Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_First value)? first,
    TResult? Function(_Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_First value)? first,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesEventCopyWith<$Res> {
  factory $StoriesEventCopyWith(
          StoriesEvent value, $Res Function(StoriesEvent) then) =
      _$StoriesEventCopyWithImpl<$Res, StoriesEvent>;
}

/// @nodoc
class _$StoriesEventCopyWithImpl<$Res, $Val extends StoriesEvent>
    implements $StoriesEventCopyWith<$Res> {
  _$StoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'StoriesEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() first,
    required TResult Function() add,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? first,
    TResult? Function()? add,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? first,
    TResult Function()? add,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_First value) first,
    required TResult Function(_Add value) add,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_First value)? first,
    TResult? Function(_Add value)? add,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_First value)? first,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StoriesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FirstImplCopyWith<$Res> {
  factory _$$FirstImplCopyWith(
          _$FirstImpl value, $Res Function(_$FirstImpl) then) =
      __$$FirstImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirstImplCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res, _$FirstImpl>
    implements _$$FirstImplCopyWith<$Res> {
  __$$FirstImplCopyWithImpl(
      _$FirstImpl _value, $Res Function(_$FirstImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FirstImpl implements _First {
  const _$FirstImpl();

  @override
  String toString() {
    return 'StoriesEvent.first()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FirstImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() first,
    required TResult Function() add,
  }) {
    return first();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? first,
    TResult? Function()? add,
  }) {
    return first?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? first,
    TResult Function()? add,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_First value) first,
    required TResult Function(_Add value) add,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_First value)? first,
    TResult? Function(_Add value)? add,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_First value)? first,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class _First implements StoriesEvent {
  const factory _First() = _$FirstImpl;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl();

  @override
  String toString() {
    return 'StoriesEvent.add()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() first,
    required TResult Function() add,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? first,
    TResult? Function()? add,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? first,
    TResult Function()? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_First value) first,
    required TResult Function(_Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_First value)? first,
    TResult? Function(_Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_First value)? first,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements StoriesEvent {
  const factory _Add() = _$AddImpl;
}

/// @nodoc
mixin _$StoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(List<ListStory>? listStory, bool? isLastPage)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(List<ListStory>? listStory, bool? isLastPage)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(List<ListStory>? listStory, bool? isLastPage)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoriesInitial value) initial,
    required TResult Function(_StoriesLoading value) loading,
    required TResult Function(_StoriesFailed value) failed,
    required TResult Function(_StoriesSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoriesInitial value)? initial,
    TResult? Function(_StoriesLoading value)? loading,
    TResult? Function(_StoriesFailed value)? failed,
    TResult? Function(_StoriesSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoriesInitial value)? initial,
    TResult Function(_StoriesLoading value)? loading,
    TResult Function(_StoriesFailed value)? failed,
    TResult Function(_StoriesSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesStateCopyWith<$Res> {
  factory $StoriesStateCopyWith(
          StoriesState value, $Res Function(StoriesState) then) =
      _$StoriesStateCopyWithImpl<$Res, StoriesState>;
}

/// @nodoc
class _$StoriesStateCopyWithImpl<$Res, $Val extends StoriesState>
    implements $StoriesStateCopyWith<$Res> {
  _$StoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StoriesInitialImplCopyWith<$Res> {
  factory _$$StoriesInitialImplCopyWith(_$StoriesInitialImpl value,
          $Res Function(_$StoriesInitialImpl) then) =
      __$$StoriesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesInitialImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesInitialImpl>
    implements _$$StoriesInitialImplCopyWith<$Res> {
  __$$StoriesInitialImplCopyWithImpl(
      _$StoriesInitialImpl _value, $Res Function(_$StoriesInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesInitialImpl implements _StoriesInitial {
  const _$StoriesInitialImpl();

  @override
  String toString() {
    return 'StoriesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoriesInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(List<ListStory>? listStory, bool? isLastPage)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(List<ListStory>? listStory, bool? isLastPage)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(List<ListStory>? listStory, bool? isLastPage)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoriesInitial value) initial,
    required TResult Function(_StoriesLoading value) loading,
    required TResult Function(_StoriesFailed value) failed,
    required TResult Function(_StoriesSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoriesInitial value)? initial,
    TResult? Function(_StoriesLoading value)? loading,
    TResult? Function(_StoriesFailed value)? failed,
    TResult? Function(_StoriesSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoriesInitial value)? initial,
    TResult Function(_StoriesLoading value)? loading,
    TResult Function(_StoriesFailed value)? failed,
    TResult Function(_StoriesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StoriesInitial implements StoriesState {
  const factory _StoriesInitial() = _$StoriesInitialImpl;
}

/// @nodoc
abstract class _$$StoriesLoadingImplCopyWith<$Res> {
  factory _$$StoriesLoadingImplCopyWith(_$StoriesLoadingImpl value,
          $Res Function(_$StoriesLoadingImpl) then) =
      __$$StoriesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesLoadingImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesLoadingImpl>
    implements _$$StoriesLoadingImplCopyWith<$Res> {
  __$$StoriesLoadingImplCopyWithImpl(
      _$StoriesLoadingImpl _value, $Res Function(_$StoriesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesLoadingImpl implements _StoriesLoading {
  const _$StoriesLoadingImpl();

  @override
  String toString() {
    return 'StoriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoriesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(List<ListStory>? listStory, bool? isLastPage)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(List<ListStory>? listStory, bool? isLastPage)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(List<ListStory>? listStory, bool? isLastPage)? success,
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
    required TResult Function(_StoriesInitial value) initial,
    required TResult Function(_StoriesLoading value) loading,
    required TResult Function(_StoriesFailed value) failed,
    required TResult Function(_StoriesSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoriesInitial value)? initial,
    TResult? Function(_StoriesLoading value)? loading,
    TResult? Function(_StoriesFailed value)? failed,
    TResult? Function(_StoriesSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoriesInitial value)? initial,
    TResult Function(_StoriesLoading value)? loading,
    TResult Function(_StoriesFailed value)? failed,
    TResult Function(_StoriesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StoriesLoading implements StoriesState {
  const factory _StoriesLoading() = _$StoriesLoadingImpl;
}

/// @nodoc
abstract class _$$StoriesFailedImplCopyWith<$Res> {
  factory _$$StoriesFailedImplCopyWith(
          _$StoriesFailedImpl value, $Res Function(_$StoriesFailedImpl) then) =
      __$$StoriesFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StoriesFailedImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesFailedImpl>
    implements _$$StoriesFailedImplCopyWith<$Res> {
  __$$StoriesFailedImplCopyWithImpl(
      _$StoriesFailedImpl _value, $Res Function(_$StoriesFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StoriesFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoriesFailedImpl implements _StoriesFailed {
  const _$StoriesFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StoriesState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesFailedImplCopyWith<_$StoriesFailedImpl> get copyWith =>
      __$$StoriesFailedImplCopyWithImpl<_$StoriesFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(List<ListStory>? listStory, bool? isLastPage)
        success,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(List<ListStory>? listStory, bool? isLastPage)? success,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(List<ListStory>? listStory, bool? isLastPage)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoriesInitial value) initial,
    required TResult Function(_StoriesLoading value) loading,
    required TResult Function(_StoriesFailed value) failed,
    required TResult Function(_StoriesSuccess value) success,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoriesInitial value)? initial,
    TResult? Function(_StoriesLoading value)? loading,
    TResult? Function(_StoriesFailed value)? failed,
    TResult? Function(_StoriesSuccess value)? success,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoriesInitial value)? initial,
    TResult Function(_StoriesLoading value)? loading,
    TResult Function(_StoriesFailed value)? failed,
    TResult Function(_StoriesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _StoriesFailed implements StoriesState {
  const factory _StoriesFailed(final String message) = _$StoriesFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$StoriesFailedImplCopyWith<_$StoriesFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoriesSuccessImplCopyWith<$Res> {
  factory _$$StoriesSuccessImplCopyWith(_$StoriesSuccessImpl value,
          $Res Function(_$StoriesSuccessImpl) then) =
      __$$StoriesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ListStory>? listStory, bool? isLastPage});
}

/// @nodoc
class __$$StoriesSuccessImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesSuccessImpl>
    implements _$$StoriesSuccessImplCopyWith<$Res> {
  __$$StoriesSuccessImplCopyWithImpl(
      _$StoriesSuccessImpl _value, $Res Function(_$StoriesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listStory = freezed,
    Object? isLastPage = freezed,
  }) {
    return _then(_$StoriesSuccessImpl(
      listStory: freezed == listStory
          ? _value._listStory
          : listStory // ignore: cast_nullable_to_non_nullable
              as List<ListStory>?,
      isLastPage: freezed == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$StoriesSuccessImpl implements _StoriesSuccess {
  const _$StoriesSuccessImpl(
      {final List<ListStory>? listStory, this.isLastPage})
      : _listStory = listStory;

  final List<ListStory>? _listStory;
  @override
  List<ListStory>? get listStory {
    final value = _listStory;
    if (value == null) return null;
    if (_listStory is EqualUnmodifiableListView) return _listStory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isLastPage;

  @override
  String toString() {
    return 'StoriesState.success(listStory: $listStory, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._listStory, _listStory) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listStory), isLastPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesSuccessImplCopyWith<_$StoriesSuccessImpl> get copyWith =>
      __$$StoriesSuccessImplCopyWithImpl<_$StoriesSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(List<ListStory>? listStory, bool? isLastPage)
        success,
  }) {
    return success(listStory, isLastPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(List<ListStory>? listStory, bool? isLastPage)? success,
  }) {
    return success?.call(listStory, isLastPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(List<ListStory>? listStory, bool? isLastPage)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(listStory, isLastPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoriesInitial value) initial,
    required TResult Function(_StoriesLoading value) loading,
    required TResult Function(_StoriesFailed value) failed,
    required TResult Function(_StoriesSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoriesInitial value)? initial,
    TResult? Function(_StoriesLoading value)? loading,
    TResult? Function(_StoriesFailed value)? failed,
    TResult? Function(_StoriesSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoriesInitial value)? initial,
    TResult Function(_StoriesLoading value)? loading,
    TResult Function(_StoriesFailed value)? failed,
    TResult Function(_StoriesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _StoriesSuccess implements StoriesState {
  const factory _StoriesSuccess(
      {final List<ListStory>? listStory,
      final bool? isLastPage}) = _$StoriesSuccessImpl;

  List<ListStory>? get listStory;
  bool? get isLastPage;
  @JsonKey(ignore: true)
  _$$StoriesSuccessImplCopyWith<_$StoriesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
