// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_story_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PickImageStoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImagePhoto,
    required TResult Function() pickImageGalery,
    required TResult Function(
            XFile imageFile, String description, num lat, num lon)
        uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImagePhoto,
    TResult? Function()? pickImageGalery,
    TResult? Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImagePhoto,
    TResult Function()? pickImageGalery,
    TResult Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImagePhotoEvent value) pickImagePhoto,
    required TResult Function(_PickImageGaleryEvent value) pickImageGalery,
    required TResult Function(_PostStoryEvent value) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult? Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult? Function(_PostStoryEvent value)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult Function(_PostStoryEvent value)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickImageStoryEventCopyWith<$Res> {
  factory $PickImageStoryEventCopyWith(
          PickImageStoryEvent value, $Res Function(PickImageStoryEvent) then) =
      _$PickImageStoryEventCopyWithImpl<$Res, PickImageStoryEvent>;
}

/// @nodoc
class _$PickImageStoryEventCopyWithImpl<$Res, $Val extends PickImageStoryEvent>
    implements $PickImageStoryEventCopyWith<$Res> {
  _$PickImageStoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PickImagePhotoEventImplCopyWith<$Res> {
  factory _$$PickImagePhotoEventImplCopyWith(_$PickImagePhotoEventImpl value,
          $Res Function(_$PickImagePhotoEventImpl) then) =
      __$$PickImagePhotoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImagePhotoEventImplCopyWithImpl<$Res>
    extends _$PickImageStoryEventCopyWithImpl<$Res, _$PickImagePhotoEventImpl>
    implements _$$PickImagePhotoEventImplCopyWith<$Res> {
  __$$PickImagePhotoEventImplCopyWithImpl(_$PickImagePhotoEventImpl _value,
      $Res Function(_$PickImagePhotoEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImagePhotoEventImpl implements _PickImagePhotoEvent {
  const _$PickImagePhotoEventImpl();

  @override
  String toString() {
    return 'PickImageStoryEvent.pickImagePhoto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImagePhotoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImagePhoto,
    required TResult Function() pickImageGalery,
    required TResult Function(
            XFile imageFile, String description, num lat, num lon)
        uploadImage,
  }) {
    return pickImagePhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImagePhoto,
    TResult? Function()? pickImageGalery,
    TResult? Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
  }) {
    return pickImagePhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImagePhoto,
    TResult Function()? pickImageGalery,
    TResult Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
    required TResult orElse(),
  }) {
    if (pickImagePhoto != null) {
      return pickImagePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImagePhotoEvent value) pickImagePhoto,
    required TResult Function(_PickImageGaleryEvent value) pickImageGalery,
    required TResult Function(_PostStoryEvent value) uploadImage,
  }) {
    return pickImagePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult? Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult? Function(_PostStoryEvent value)? uploadImage,
  }) {
    return pickImagePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult Function(_PostStoryEvent value)? uploadImage,
    required TResult orElse(),
  }) {
    if (pickImagePhoto != null) {
      return pickImagePhoto(this);
    }
    return orElse();
  }
}

abstract class _PickImagePhotoEvent implements PickImageStoryEvent {
  const factory _PickImagePhotoEvent() = _$PickImagePhotoEventImpl;
}

/// @nodoc
abstract class _$$PickImageGaleryEventImplCopyWith<$Res> {
  factory _$$PickImageGaleryEventImplCopyWith(_$PickImageGaleryEventImpl value,
          $Res Function(_$PickImageGaleryEventImpl) then) =
      __$$PickImageGaleryEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageGaleryEventImplCopyWithImpl<$Res>
    extends _$PickImageStoryEventCopyWithImpl<$Res, _$PickImageGaleryEventImpl>
    implements _$$PickImageGaleryEventImplCopyWith<$Res> {
  __$$PickImageGaleryEventImplCopyWithImpl(_$PickImageGaleryEventImpl _value,
      $Res Function(_$PickImageGaleryEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImageGaleryEventImpl implements _PickImageGaleryEvent {
  const _$PickImageGaleryEventImpl();

  @override
  String toString() {
    return 'PickImageStoryEvent.pickImageGalery()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageGaleryEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImagePhoto,
    required TResult Function() pickImageGalery,
    required TResult Function(
            XFile imageFile, String description, num lat, num lon)
        uploadImage,
  }) {
    return pickImageGalery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImagePhoto,
    TResult? Function()? pickImageGalery,
    TResult? Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
  }) {
    return pickImageGalery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImagePhoto,
    TResult Function()? pickImageGalery,
    TResult Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
    required TResult orElse(),
  }) {
    if (pickImageGalery != null) {
      return pickImageGalery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImagePhotoEvent value) pickImagePhoto,
    required TResult Function(_PickImageGaleryEvent value) pickImageGalery,
    required TResult Function(_PostStoryEvent value) uploadImage,
  }) {
    return pickImageGalery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult? Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult? Function(_PostStoryEvent value)? uploadImage,
  }) {
    return pickImageGalery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult Function(_PostStoryEvent value)? uploadImage,
    required TResult orElse(),
  }) {
    if (pickImageGalery != null) {
      return pickImageGalery(this);
    }
    return orElse();
  }
}

abstract class _PickImageGaleryEvent implements PickImageStoryEvent {
  const factory _PickImageGaleryEvent() = _$PickImageGaleryEventImpl;
}

/// @nodoc
abstract class _$$PostStoryEventImplCopyWith<$Res> {
  factory _$$PostStoryEventImplCopyWith(_$PostStoryEventImpl value,
          $Res Function(_$PostStoryEventImpl) then) =
      __$$PostStoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile imageFile, String description, num lat, num lon});
}

/// @nodoc
class __$$PostStoryEventImplCopyWithImpl<$Res>
    extends _$PickImageStoryEventCopyWithImpl<$Res, _$PostStoryEventImpl>
    implements _$$PostStoryEventImplCopyWith<$Res> {
  __$$PostStoryEventImplCopyWithImpl(
      _$PostStoryEventImpl _value, $Res Function(_$PostStoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = null,
    Object? description = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$PostStoryEventImpl(
      imageFile: null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$PostStoryEventImpl implements _PostStoryEvent {
  const _$PostStoryEventImpl(
      {required this.imageFile,
      required this.description,
      required this.lat,
      required this.lon});

  @override
  final XFile imageFile;
  @override
  final String description;
  @override
  final num lat;
  @override
  final num lon;

  @override
  String toString() {
    return 'PickImageStoryEvent.uploadImage(imageFile: $imageFile, description: $description, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStoryEventImpl &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, imageFile, description, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStoryEventImplCopyWith<_$PostStoryEventImpl> get copyWith =>
      __$$PostStoryEventImplCopyWithImpl<_$PostStoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImagePhoto,
    required TResult Function() pickImageGalery,
    required TResult Function(
            XFile imageFile, String description, num lat, num lon)
        uploadImage,
  }) {
    return uploadImage(imageFile, description, lat, lon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImagePhoto,
    TResult? Function()? pickImageGalery,
    TResult? Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
  }) {
    return uploadImage?.call(imageFile, description, lat, lon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImagePhoto,
    TResult Function()? pickImageGalery,
    TResult Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(imageFile, description, lat, lon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImagePhotoEvent value) pickImagePhoto,
    required TResult Function(_PickImageGaleryEvent value) pickImageGalery,
    required TResult Function(_PostStoryEvent value) uploadImage,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult? Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult? Function(_PostStoryEvent value)? uploadImage,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult Function(_PostStoryEvent value)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _PostStoryEvent implements PickImageStoryEvent {
  const factory _PostStoryEvent(
      {required final XFile imageFile,
      required final String description,
      required final num lat,
      required final num lon}) = _$PostStoryEventImpl;

  XFile get imageFile;
  String get description;
  num get lat;
  num get lon;
  @JsonKey(ignore: true)
  _$$PostStoryEventImplCopyWith<_$PostStoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PickImageStoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() postLoading,
    required TResult Function(String message) postFailed,
    required TResult Function(RegisterResponseModel responseModel) postSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? postLoading,
    TResult? Function(String message)? postFailed,
    TResult? Function(RegisterResponseModel responseModel)? postSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? postLoading,
    TResult Function(String message)? postFailed,
    TResult Function(RegisterResponseModel responseModel)? postSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImagePostLoading value) postLoading,
    required TResult Function(_PickImagePostFailed value) postFailed,
    required TResult Function(_PickImagePostSuccess value) postSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImagePostLoading value)? postLoading,
    TResult? Function(_PickImagePostFailed value)? postFailed,
    TResult? Function(_PickImagePostSuccess value)? postSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImagePostLoading value)? postLoading,
    TResult Function(_PickImagePostFailed value)? postFailed,
    TResult Function(_PickImagePostSuccess value)? postSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickImageStoryStateCopyWith<$Res> {
  factory $PickImageStoryStateCopyWith(
          PickImageStoryState value, $Res Function(PickImageStoryState) then) =
      _$PickImageStoryStateCopyWithImpl<$Res, PickImageStoryState>;
}

/// @nodoc
class _$PickImageStoryStateCopyWithImpl<$Res, $Val extends PickImageStoryState>
    implements $PickImageStoryStateCopyWith<$Res> {
  _$PickImageStoryStateCopyWithImpl(this._value, this._then);

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
    extends _$PickImageStoryStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'PickImageStoryState.initial()';
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
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() postLoading,
    required TResult Function(String message) postFailed,
    required TResult Function(RegisterResponseModel responseModel) postSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? postLoading,
    TResult? Function(String message)? postFailed,
    TResult? Function(RegisterResponseModel responseModel)? postSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? postLoading,
    TResult Function(String message)? postFailed,
    TResult Function(RegisterResponseModel responseModel)? postSuccess,
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
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImagePostLoading value) postLoading,
    required TResult Function(_PickImagePostFailed value) postFailed,
    required TResult Function(_PickImagePostSuccess value) postSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImagePostLoading value)? postLoading,
    TResult? Function(_PickImagePostFailed value)? postFailed,
    TResult? Function(_PickImagePostSuccess value)? postSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImagePostLoading value)? postLoading,
    TResult Function(_PickImagePostFailed value)? postFailed,
    TResult Function(_PickImagePostSuccess value)? postSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PickImageStoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PickImageStoryLoadingImplCopyWith<$Res> {
  factory _$$PickImageStoryLoadingImplCopyWith(
          _$PickImageStoryLoadingImpl value,
          $Res Function(_$PickImageStoryLoadingImpl) then) =
      __$$PickImageStoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageStoryLoadingImplCopyWithImpl<$Res>
    extends _$PickImageStoryStateCopyWithImpl<$Res, _$PickImageStoryLoadingImpl>
    implements _$$PickImageStoryLoadingImplCopyWith<$Res> {
  __$$PickImageStoryLoadingImplCopyWithImpl(_$PickImageStoryLoadingImpl _value,
      $Res Function(_$PickImageStoryLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImageStoryLoadingImpl implements _PickImageStoryLoading {
  const _$PickImageStoryLoadingImpl();

  @override
  String toString() {
    return 'PickImageStoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageStoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() postLoading,
    required TResult Function(String message) postFailed,
    required TResult Function(RegisterResponseModel responseModel) postSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? postLoading,
    TResult? Function(String message)? postFailed,
    TResult? Function(RegisterResponseModel responseModel)? postSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? postLoading,
    TResult Function(String message)? postFailed,
    TResult Function(RegisterResponseModel responseModel)? postSuccess,
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
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImagePostLoading value) postLoading,
    required TResult Function(_PickImagePostFailed value) postFailed,
    required TResult Function(_PickImagePostSuccess value) postSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImagePostLoading value)? postLoading,
    TResult? Function(_PickImagePostFailed value)? postFailed,
    TResult? Function(_PickImagePostSuccess value)? postSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImagePostLoading value)? postLoading,
    TResult Function(_PickImagePostFailed value)? postFailed,
    TResult Function(_PickImagePostSuccess value)? postSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PickImageStoryLoading implements PickImageStoryState {
  const factory _PickImageStoryLoading() = _$PickImageStoryLoadingImpl;
}

/// @nodoc
abstract class _$$PickImageStoryFailedImplCopyWith<$Res> {
  factory _$$PickImageStoryFailedImplCopyWith(_$PickImageStoryFailedImpl value,
          $Res Function(_$PickImageStoryFailedImpl) then) =
      __$$PickImageStoryFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PickImageStoryFailedImplCopyWithImpl<$Res>
    extends _$PickImageStoryStateCopyWithImpl<$Res, _$PickImageStoryFailedImpl>
    implements _$$PickImageStoryFailedImplCopyWith<$Res> {
  __$$PickImageStoryFailedImplCopyWithImpl(_$PickImageStoryFailedImpl _value,
      $Res Function(_$PickImageStoryFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PickImageStoryFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickImageStoryFailedImpl implements _PickImageStoryFailed {
  const _$PickImageStoryFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PickImageStoryState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageStoryFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageStoryFailedImplCopyWith<_$PickImageStoryFailedImpl>
      get copyWith =>
          __$$PickImageStoryFailedImplCopyWithImpl<_$PickImageStoryFailedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() postLoading,
    required TResult Function(String message) postFailed,
    required TResult Function(RegisterResponseModel responseModel) postSuccess,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? postLoading,
    TResult? Function(String message)? postFailed,
    TResult? Function(RegisterResponseModel responseModel)? postSuccess,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? postLoading,
    TResult Function(String message)? postFailed,
    TResult Function(RegisterResponseModel responseModel)? postSuccess,
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
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImagePostLoading value) postLoading,
    required TResult Function(_PickImagePostFailed value) postFailed,
    required TResult Function(_PickImagePostSuccess value) postSuccess,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImagePostLoading value)? postLoading,
    TResult? Function(_PickImagePostFailed value)? postFailed,
    TResult? Function(_PickImagePostSuccess value)? postSuccess,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImagePostLoading value)? postLoading,
    TResult Function(_PickImagePostFailed value)? postFailed,
    TResult Function(_PickImagePostSuccess value)? postSuccess,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _PickImageStoryFailed implements PickImageStoryState {
  const factory _PickImageStoryFailed(final String message) =
      _$PickImageStoryFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PickImageStoryFailedImplCopyWith<_$PickImageStoryFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImageStorySuccessImplCopyWith<$Res> {
  factory _$$PickImageStorySuccessImplCopyWith(
          _$PickImageStorySuccessImpl value,
          $Res Function(_$PickImageStorySuccessImpl) then) =
      __$$PickImageStorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath, XFile imageFile});
}

/// @nodoc
class __$$PickImageStorySuccessImplCopyWithImpl<$Res>
    extends _$PickImageStoryStateCopyWithImpl<$Res, _$PickImageStorySuccessImpl>
    implements _$$PickImageStorySuccessImplCopyWith<$Res> {
  __$$PickImageStorySuccessImplCopyWithImpl(_$PickImageStorySuccessImpl _value,
      $Res Function(_$PickImageStorySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? imageFile = null,
  }) {
    return _then(_$PickImageStorySuccessImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$PickImageStorySuccessImpl implements _PickImageStorySuccess {
  const _$PickImageStorySuccessImpl(
      {required this.imagePath, required this.imageFile});

  @override
  final String imagePath;
  @override
  final XFile imageFile;

  @override
  String toString() {
    return 'PickImageStoryState.success(imagePath: $imagePath, imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageStorySuccessImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageStorySuccessImplCopyWith<_$PickImageStorySuccessImpl>
      get copyWith => __$$PickImageStorySuccessImplCopyWithImpl<
          _$PickImageStorySuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() postLoading,
    required TResult Function(String message) postFailed,
    required TResult Function(RegisterResponseModel responseModel) postSuccess,
  }) {
    return success(imagePath, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? postLoading,
    TResult? Function(String message)? postFailed,
    TResult? Function(RegisterResponseModel responseModel)? postSuccess,
  }) {
    return success?.call(imagePath, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? postLoading,
    TResult Function(String message)? postFailed,
    TResult Function(RegisterResponseModel responseModel)? postSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(imagePath, imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImagePostLoading value) postLoading,
    required TResult Function(_PickImagePostFailed value) postFailed,
    required TResult Function(_PickImagePostSuccess value) postSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImagePostLoading value)? postLoading,
    TResult? Function(_PickImagePostFailed value)? postFailed,
    TResult? Function(_PickImagePostSuccess value)? postSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImagePostLoading value)? postLoading,
    TResult Function(_PickImagePostFailed value)? postFailed,
    TResult Function(_PickImagePostSuccess value)? postSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PickImageStorySuccess implements PickImageStoryState {
  const factory _PickImageStorySuccess(
      {required final String imagePath,
      required final XFile imageFile}) = _$PickImageStorySuccessImpl;

  String get imagePath;
  XFile get imageFile;
  @JsonKey(ignore: true)
  _$$PickImageStorySuccessImplCopyWith<_$PickImageStorySuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImagePostLoadingImplCopyWith<$Res> {
  factory _$$PickImagePostLoadingImplCopyWith(_$PickImagePostLoadingImpl value,
          $Res Function(_$PickImagePostLoadingImpl) then) =
      __$$PickImagePostLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImagePostLoadingImplCopyWithImpl<$Res>
    extends _$PickImageStoryStateCopyWithImpl<$Res, _$PickImagePostLoadingImpl>
    implements _$$PickImagePostLoadingImplCopyWith<$Res> {
  __$$PickImagePostLoadingImplCopyWithImpl(_$PickImagePostLoadingImpl _value,
      $Res Function(_$PickImagePostLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImagePostLoadingImpl implements _PickImagePostLoading {
  const _$PickImagePostLoadingImpl();

  @override
  String toString() {
    return 'PickImageStoryState.postLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImagePostLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() postLoading,
    required TResult Function(String message) postFailed,
    required TResult Function(RegisterResponseModel responseModel) postSuccess,
  }) {
    return postLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? postLoading,
    TResult? Function(String message)? postFailed,
    TResult? Function(RegisterResponseModel responseModel)? postSuccess,
  }) {
    return postLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? postLoading,
    TResult Function(String message)? postFailed,
    TResult Function(RegisterResponseModel responseModel)? postSuccess,
    required TResult orElse(),
  }) {
    if (postLoading != null) {
      return postLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImagePostLoading value) postLoading,
    required TResult Function(_PickImagePostFailed value) postFailed,
    required TResult Function(_PickImagePostSuccess value) postSuccess,
  }) {
    return postLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImagePostLoading value)? postLoading,
    TResult? Function(_PickImagePostFailed value)? postFailed,
    TResult? Function(_PickImagePostSuccess value)? postSuccess,
  }) {
    return postLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImagePostLoading value)? postLoading,
    TResult Function(_PickImagePostFailed value)? postFailed,
    TResult Function(_PickImagePostSuccess value)? postSuccess,
    required TResult orElse(),
  }) {
    if (postLoading != null) {
      return postLoading(this);
    }
    return orElse();
  }
}

abstract class _PickImagePostLoading implements PickImageStoryState {
  const factory _PickImagePostLoading() = _$PickImagePostLoadingImpl;
}

/// @nodoc
abstract class _$$PickImagePostFailedImplCopyWith<$Res> {
  factory _$$PickImagePostFailedImplCopyWith(_$PickImagePostFailedImpl value,
          $Res Function(_$PickImagePostFailedImpl) then) =
      __$$PickImagePostFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PickImagePostFailedImplCopyWithImpl<$Res>
    extends _$PickImageStoryStateCopyWithImpl<$Res, _$PickImagePostFailedImpl>
    implements _$$PickImagePostFailedImplCopyWith<$Res> {
  __$$PickImagePostFailedImplCopyWithImpl(_$PickImagePostFailedImpl _value,
      $Res Function(_$PickImagePostFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PickImagePostFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickImagePostFailedImpl implements _PickImagePostFailed {
  const _$PickImagePostFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PickImageStoryState.postFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImagePostFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImagePostFailedImplCopyWith<_$PickImagePostFailedImpl> get copyWith =>
      __$$PickImagePostFailedImplCopyWithImpl<_$PickImagePostFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() postLoading,
    required TResult Function(String message) postFailed,
    required TResult Function(RegisterResponseModel responseModel) postSuccess,
  }) {
    return postFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? postLoading,
    TResult? Function(String message)? postFailed,
    TResult? Function(RegisterResponseModel responseModel)? postSuccess,
  }) {
    return postFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? postLoading,
    TResult Function(String message)? postFailed,
    TResult Function(RegisterResponseModel responseModel)? postSuccess,
    required TResult orElse(),
  }) {
    if (postFailed != null) {
      return postFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImagePostLoading value) postLoading,
    required TResult Function(_PickImagePostFailed value) postFailed,
    required TResult Function(_PickImagePostSuccess value) postSuccess,
  }) {
    return postFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImagePostLoading value)? postLoading,
    TResult? Function(_PickImagePostFailed value)? postFailed,
    TResult? Function(_PickImagePostSuccess value)? postSuccess,
  }) {
    return postFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImagePostLoading value)? postLoading,
    TResult Function(_PickImagePostFailed value)? postFailed,
    TResult Function(_PickImagePostSuccess value)? postSuccess,
    required TResult orElse(),
  }) {
    if (postFailed != null) {
      return postFailed(this);
    }
    return orElse();
  }
}

abstract class _PickImagePostFailed implements PickImageStoryState {
  const factory _PickImagePostFailed(final String message) =
      _$PickImagePostFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PickImagePostFailedImplCopyWith<_$PickImagePostFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImagePostSuccessImplCopyWith<$Res> {
  factory _$$PickImagePostSuccessImplCopyWith(_$PickImagePostSuccessImpl value,
          $Res Function(_$PickImagePostSuccessImpl) then) =
      __$$PickImagePostSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterResponseModel responseModel});

  $RegisterResponseModelCopyWith<$Res> get responseModel;
}

/// @nodoc
class __$$PickImagePostSuccessImplCopyWithImpl<$Res>
    extends _$PickImageStoryStateCopyWithImpl<$Res, _$PickImagePostSuccessImpl>
    implements _$$PickImagePostSuccessImplCopyWith<$Res> {
  __$$PickImagePostSuccessImplCopyWithImpl(_$PickImagePostSuccessImpl _value,
      $Res Function(_$PickImagePostSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseModel = null,
  }) {
    return _then(_$PickImagePostSuccessImpl(
      null == responseModel
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as RegisterResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterResponseModelCopyWith<$Res> get responseModel {
    return $RegisterResponseModelCopyWith<$Res>(_value.responseModel, (value) {
      return _then(_value.copyWith(responseModel: value));
    });
  }
}

/// @nodoc

class _$PickImagePostSuccessImpl implements _PickImagePostSuccess {
  const _$PickImagePostSuccessImpl(this.responseModel);

  @override
  final RegisterResponseModel responseModel;

  @override
  String toString() {
    return 'PickImageStoryState.postSuccess(responseModel: $responseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImagePostSuccessImpl &&
            (identical(other.responseModel, responseModel) ||
                other.responseModel == responseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImagePostSuccessImplCopyWith<_$PickImagePostSuccessImpl>
      get copyWith =>
          __$$PickImagePostSuccessImplCopyWithImpl<_$PickImagePostSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() postLoading,
    required TResult Function(String message) postFailed,
    required TResult Function(RegisterResponseModel responseModel) postSuccess,
  }) {
    return postSuccess(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? postLoading,
    TResult? Function(String message)? postFailed,
    TResult? Function(RegisterResponseModel responseModel)? postSuccess,
  }) {
    return postSuccess?.call(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? postLoading,
    TResult Function(String message)? postFailed,
    TResult Function(RegisterResponseModel responseModel)? postSuccess,
    required TResult orElse(),
  }) {
    if (postSuccess != null) {
      return postSuccess(responseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImagePostLoading value) postLoading,
    required TResult Function(_PickImagePostFailed value) postFailed,
    required TResult Function(_PickImagePostSuccess value) postSuccess,
  }) {
    return postSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImagePostLoading value)? postLoading,
    TResult? Function(_PickImagePostFailed value)? postFailed,
    TResult? Function(_PickImagePostSuccess value)? postSuccess,
  }) {
    return postSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImagePostLoading value)? postLoading,
    TResult Function(_PickImagePostFailed value)? postFailed,
    TResult Function(_PickImagePostSuccess value)? postSuccess,
    required TResult orElse(),
  }) {
    if (postSuccess != null) {
      return postSuccess(this);
    }
    return orElse();
  }
}

abstract class _PickImagePostSuccess implements PickImageStoryState {
  const factory _PickImagePostSuccess(
      final RegisterResponseModel responseModel) = _$PickImagePostSuccessImpl;

  RegisterResponseModel get responseModel;
  @JsonKey(ignore: true)
  _$$PickImagePostSuccessImplCopyWith<_$PickImagePostSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
