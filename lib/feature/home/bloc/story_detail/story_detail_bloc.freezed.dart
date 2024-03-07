// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoryDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String storyId) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String storyId)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String storyId)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryDetailEventCopyWith<$Res> {
  factory $StoryDetailEventCopyWith(
          StoryDetailEvent value, $Res Function(StoryDetailEvent) then) =
      _$StoryDetailEventCopyWithImpl<$Res, StoryDetailEvent>;
}

/// @nodoc
class _$StoryDetailEventCopyWithImpl<$Res, $Val extends StoryDetailEvent>
    implements $StoryDetailEventCopyWith<$Res> {
  _$StoryDetailEventCopyWithImpl(this._value, this._then);

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
    extends _$StoryDetailEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'StoryDetailEvent.started()';
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
    required TResult Function(String storyId) add,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String storyId)? add,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String storyId)? add,
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
    required TResult Function(_Add value) add,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StoryDetailEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String storyId});
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$StoryDetailEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storyId = null,
  }) {
    return _then(_$AddImpl(
      null == storyId
          ? _value.storyId
          : storyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl(this.storyId);

  @override
  final String storyId;

  @override
  String toString() {
    return 'StoryDetailEvent.add(storyId: $storyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.storyId, storyId) || other.storyId == storyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String storyId) add,
  }) {
    return add(storyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String storyId)? add,
  }) {
    return add?.call(storyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String storyId)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(storyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements StoryDetailEvent {
  const factory _Add(final String storyId) = _$AddImpl;

  String get storyId;
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoryDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(GetDetailStoryResponseModel responseModel)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(GetDetailStoryResponseModel responseModel)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(GetDetailStoryResponseModel responseModel)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StoryDetailLoading value) loading,
    required TResult Function(_StoryDetailFailed value) failed,
    required TResult Function(_StoryDetailSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoryDetailLoading value)? loading,
    TResult? Function(_StoryDetailFailed value)? failed,
    TResult? Function(_StoryDetailSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoryDetailLoading value)? loading,
    TResult Function(_StoryDetailFailed value)? failed,
    TResult Function(_StoryDetailSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryDetailStateCopyWith<$Res> {
  factory $StoryDetailStateCopyWith(
          StoryDetailState value, $Res Function(StoryDetailState) then) =
      _$StoryDetailStateCopyWithImpl<$Res, StoryDetailState>;
}

/// @nodoc
class _$StoryDetailStateCopyWithImpl<$Res, $Val extends StoryDetailState>
    implements $StoryDetailStateCopyWith<$Res> {
  _$StoryDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StoryDetailStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StoryDetailState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(GetDetailStoryResponseModel responseModel)
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
    TResult? Function(GetDetailStoryResponseModel responseModel)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(GetDetailStoryResponseModel responseModel)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_StoryDetailLoading value) loading,
    required TResult Function(_StoryDetailFailed value) failed,
    required TResult Function(_StoryDetailSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoryDetailLoading value)? loading,
    TResult? Function(_StoryDetailFailed value)? failed,
    TResult? Function(_StoryDetailSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoryDetailLoading value)? loading,
    TResult Function(_StoryDetailFailed value)? failed,
    TResult Function(_StoryDetailSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StoryDetailState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$StoryDetailLoadingImplCopyWith<$Res> {
  factory _$$StoryDetailLoadingImplCopyWith(_$StoryDetailLoadingImpl value,
          $Res Function(_$StoryDetailLoadingImpl) then) =
      __$$StoryDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoryDetailLoadingImplCopyWithImpl<$Res>
    extends _$StoryDetailStateCopyWithImpl<$Res, _$StoryDetailLoadingImpl>
    implements _$$StoryDetailLoadingImplCopyWith<$Res> {
  __$$StoryDetailLoadingImplCopyWithImpl(_$StoryDetailLoadingImpl _value,
      $Res Function(_$StoryDetailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoryDetailLoadingImpl implements _StoryDetailLoading {
  const _$StoryDetailLoadingImpl();

  @override
  String toString() {
    return 'StoryDetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoryDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(GetDetailStoryResponseModel responseModel)
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
    TResult? Function(GetDetailStoryResponseModel responseModel)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(GetDetailStoryResponseModel responseModel)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_StoryDetailLoading value) loading,
    required TResult Function(_StoryDetailFailed value) failed,
    required TResult Function(_StoryDetailSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoryDetailLoading value)? loading,
    TResult? Function(_StoryDetailFailed value)? failed,
    TResult? Function(_StoryDetailSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoryDetailLoading value)? loading,
    TResult Function(_StoryDetailFailed value)? failed,
    TResult Function(_StoryDetailSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StoryDetailLoading implements StoryDetailState {
  const factory _StoryDetailLoading() = _$StoryDetailLoadingImpl;
}

/// @nodoc
abstract class _$$StoryDetailFailedImplCopyWith<$Res> {
  factory _$$StoryDetailFailedImplCopyWith(_$StoryDetailFailedImpl value,
          $Res Function(_$StoryDetailFailedImpl) then) =
      __$$StoryDetailFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StoryDetailFailedImplCopyWithImpl<$Res>
    extends _$StoryDetailStateCopyWithImpl<$Res, _$StoryDetailFailedImpl>
    implements _$$StoryDetailFailedImplCopyWith<$Res> {
  __$$StoryDetailFailedImplCopyWithImpl(_$StoryDetailFailedImpl _value,
      $Res Function(_$StoryDetailFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StoryDetailFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoryDetailFailedImpl implements _StoryDetailFailed {
  const _$StoryDetailFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StoryDetailState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryDetailFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryDetailFailedImplCopyWith<_$StoryDetailFailedImpl> get copyWith =>
      __$$StoryDetailFailedImplCopyWithImpl<_$StoryDetailFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(GetDetailStoryResponseModel responseModel)
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
    TResult? Function(GetDetailStoryResponseModel responseModel)? success,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(GetDetailStoryResponseModel responseModel)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_StoryDetailLoading value) loading,
    required TResult Function(_StoryDetailFailed value) failed,
    required TResult Function(_StoryDetailSuccess value) success,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoryDetailLoading value)? loading,
    TResult? Function(_StoryDetailFailed value)? failed,
    TResult? Function(_StoryDetailSuccess value)? success,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoryDetailLoading value)? loading,
    TResult Function(_StoryDetailFailed value)? failed,
    TResult Function(_StoryDetailSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _StoryDetailFailed implements StoryDetailState {
  const factory _StoryDetailFailed(final String message) =
      _$StoryDetailFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$StoryDetailFailedImplCopyWith<_$StoryDetailFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoryDetailSuccessImplCopyWith<$Res> {
  factory _$$StoryDetailSuccessImplCopyWith(_$StoryDetailSuccessImpl value,
          $Res Function(_$StoryDetailSuccessImpl) then) =
      __$$StoryDetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetDetailStoryResponseModel responseModel});

  $GetDetailStoryResponseModelCopyWith<$Res> get responseModel;
}

/// @nodoc
class __$$StoryDetailSuccessImplCopyWithImpl<$Res>
    extends _$StoryDetailStateCopyWithImpl<$Res, _$StoryDetailSuccessImpl>
    implements _$$StoryDetailSuccessImplCopyWith<$Res> {
  __$$StoryDetailSuccessImplCopyWithImpl(_$StoryDetailSuccessImpl _value,
      $Res Function(_$StoryDetailSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseModel = null,
  }) {
    return _then(_$StoryDetailSuccessImpl(
      null == responseModel
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as GetDetailStoryResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GetDetailStoryResponseModelCopyWith<$Res> get responseModel {
    return $GetDetailStoryResponseModelCopyWith<$Res>(_value.responseModel,
        (value) {
      return _then(_value.copyWith(responseModel: value));
    });
  }
}

/// @nodoc

class _$StoryDetailSuccessImpl implements _StoryDetailSuccess {
  const _$StoryDetailSuccessImpl(this.responseModel);

  @override
  final GetDetailStoryResponseModel responseModel;

  @override
  String toString() {
    return 'StoryDetailState.success(responseModel: $responseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryDetailSuccessImpl &&
            (identical(other.responseModel, responseModel) ||
                other.responseModel == responseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryDetailSuccessImplCopyWith<_$StoryDetailSuccessImpl> get copyWith =>
      __$$StoryDetailSuccessImplCopyWithImpl<_$StoryDetailSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(GetDetailStoryResponseModel responseModel)
        success,
  }) {
    return success(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(GetDetailStoryResponseModel responseModel)? success,
  }) {
    return success?.call(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(GetDetailStoryResponseModel responseModel)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(responseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StoryDetailLoading value) loading,
    required TResult Function(_StoryDetailFailed value) failed,
    required TResult Function(_StoryDetailSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoryDetailLoading value)? loading,
    TResult? Function(_StoryDetailFailed value)? failed,
    TResult? Function(_StoryDetailSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoryDetailLoading value)? loading,
    TResult Function(_StoryDetailFailed value)? failed,
    TResult Function(_StoryDetailSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _StoryDetailSuccess implements StoryDetailState {
  const factory _StoryDetailSuccess(
          final GetDetailStoryResponseModel responseModel) =
      _$StoryDetailSuccessImpl;

  GetDetailStoryResponseModel get responseModel;
  @JsonKey(ignore: true)
  _$$StoryDetailSuccessImplCopyWith<_$StoryDetailSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
