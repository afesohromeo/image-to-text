// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? image) readTextFromImage,
    required TResult Function(File? image) upload,
    required TResult Function() initilize,
    required TResult Function() launchCamera,
    required TResult Function() scan,
    required TResult Function() disposeCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? image)? readTextFromImage,
    TResult? Function(File? image)? upload,
    TResult? Function()? initilize,
    TResult? Function()? launchCamera,
    TResult? Function()? scan,
    TResult? Function()? disposeCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? image)? readTextFromImage,
    TResult Function(File? image)? upload,
    TResult Function()? initilize,
    TResult Function()? launchCamera,
    TResult Function()? scan,
    TResult Function()? disposeCamera,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadTextFromImage value) readTextFromImage,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Initialize value) initilize,
    required TResult Function(_LaunchCamera value) launchCamera,
    required TResult Function(_Scan value) scan,
    required TResult Function(_DisposeCamera value) disposeCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadTextFromImage value)? readTextFromImage,
    TResult? Function(_Upload value)? upload,
    TResult? Function(_Initialize value)? initilize,
    TResult? Function(_LaunchCamera value)? launchCamera,
    TResult? Function(_Scan value)? scan,
    TResult? Function(_DisposeCamera value)? disposeCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadTextFromImage value)? readTextFromImage,
    TResult Function(_Upload value)? upload,
    TResult Function(_Initialize value)? initilize,
    TResult Function(_LaunchCamera value)? launchCamera,
    TResult Function(_Scan value)? scan,
    TResult Function(_DisposeCamera value)? disposeCamera,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReadTextFromImageImplCopyWith<$Res> {
  factory _$$ReadTextFromImageImplCopyWith(_$ReadTextFromImageImpl value,
          $Res Function(_$ReadTextFromImageImpl) then) =
      __$$ReadTextFromImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? image});
}

/// @nodoc
class __$$ReadTextFromImageImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ReadTextFromImageImpl>
    implements _$$ReadTextFromImageImplCopyWith<$Res> {
  __$$ReadTextFromImageImplCopyWithImpl(_$ReadTextFromImageImpl _value,
      $Res Function(_$ReadTextFromImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$ReadTextFromImageImpl(
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$ReadTextFromImageImpl implements _ReadTextFromImage {
  const _$ReadTextFromImageImpl(this.image);

  @override
  final File? image;

  @override
  String toString() {
    return 'HomeEvent.readTextFromImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadTextFromImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadTextFromImageImplCopyWith<_$ReadTextFromImageImpl> get copyWith =>
      __$$ReadTextFromImageImplCopyWithImpl<_$ReadTextFromImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? image) readTextFromImage,
    required TResult Function(File? image) upload,
    required TResult Function() initilize,
    required TResult Function() launchCamera,
    required TResult Function() scan,
    required TResult Function() disposeCamera,
  }) {
    return readTextFromImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? image)? readTextFromImage,
    TResult? Function(File? image)? upload,
    TResult? Function()? initilize,
    TResult? Function()? launchCamera,
    TResult? Function()? scan,
    TResult? Function()? disposeCamera,
  }) {
    return readTextFromImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? image)? readTextFromImage,
    TResult Function(File? image)? upload,
    TResult Function()? initilize,
    TResult Function()? launchCamera,
    TResult Function()? scan,
    TResult Function()? disposeCamera,
    required TResult orElse(),
  }) {
    if (readTextFromImage != null) {
      return readTextFromImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadTextFromImage value) readTextFromImage,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Initialize value) initilize,
    required TResult Function(_LaunchCamera value) launchCamera,
    required TResult Function(_Scan value) scan,
    required TResult Function(_DisposeCamera value) disposeCamera,
  }) {
    return readTextFromImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadTextFromImage value)? readTextFromImage,
    TResult? Function(_Upload value)? upload,
    TResult? Function(_Initialize value)? initilize,
    TResult? Function(_LaunchCamera value)? launchCamera,
    TResult? Function(_Scan value)? scan,
    TResult? Function(_DisposeCamera value)? disposeCamera,
  }) {
    return readTextFromImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadTextFromImage value)? readTextFromImage,
    TResult Function(_Upload value)? upload,
    TResult Function(_Initialize value)? initilize,
    TResult Function(_LaunchCamera value)? launchCamera,
    TResult Function(_Scan value)? scan,
    TResult Function(_DisposeCamera value)? disposeCamera,
    required TResult orElse(),
  }) {
    if (readTextFromImage != null) {
      return readTextFromImage(this);
    }
    return orElse();
  }
}

abstract class _ReadTextFromImage implements HomeEvent {
  const factory _ReadTextFromImage(final File? image) = _$ReadTextFromImageImpl;

  File? get image;
  @JsonKey(ignore: true)
  _$$ReadTextFromImageImplCopyWith<_$ReadTextFromImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadImplCopyWith<$Res> {
  factory _$$UploadImplCopyWith(
          _$UploadImpl value, $Res Function(_$UploadImpl) then) =
      __$$UploadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? image});
}

/// @nodoc
class __$$UploadImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UploadImpl>
    implements _$$UploadImplCopyWith<$Res> {
  __$$UploadImplCopyWithImpl(
      _$UploadImpl _value, $Res Function(_$UploadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$UploadImpl(
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$UploadImpl implements _Upload {
  const _$UploadImpl(this.image);

  @override
  final File? image;

  @override
  String toString() {
    return 'HomeEvent.upload(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImplCopyWith<_$UploadImpl> get copyWith =>
      __$$UploadImplCopyWithImpl<_$UploadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? image) readTextFromImage,
    required TResult Function(File? image) upload,
    required TResult Function() initilize,
    required TResult Function() launchCamera,
    required TResult Function() scan,
    required TResult Function() disposeCamera,
  }) {
    return upload(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? image)? readTextFromImage,
    TResult? Function(File? image)? upload,
    TResult? Function()? initilize,
    TResult? Function()? launchCamera,
    TResult? Function()? scan,
    TResult? Function()? disposeCamera,
  }) {
    return upload?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? image)? readTextFromImage,
    TResult Function(File? image)? upload,
    TResult Function()? initilize,
    TResult Function()? launchCamera,
    TResult Function()? scan,
    TResult Function()? disposeCamera,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadTextFromImage value) readTextFromImage,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Initialize value) initilize,
    required TResult Function(_LaunchCamera value) launchCamera,
    required TResult Function(_Scan value) scan,
    required TResult Function(_DisposeCamera value) disposeCamera,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadTextFromImage value)? readTextFromImage,
    TResult? Function(_Upload value)? upload,
    TResult? Function(_Initialize value)? initilize,
    TResult? Function(_LaunchCamera value)? launchCamera,
    TResult? Function(_Scan value)? scan,
    TResult? Function(_DisposeCamera value)? disposeCamera,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadTextFromImage value)? readTextFromImage,
    TResult Function(_Upload value)? upload,
    TResult Function(_Initialize value)? initilize,
    TResult Function(_LaunchCamera value)? launchCamera,
    TResult Function(_Scan value)? scan,
    TResult Function(_DisposeCamera value)? disposeCamera,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(this);
    }
    return orElse();
  }
}

abstract class _Upload implements HomeEvent {
  const factory _Upload(final File? image) = _$UploadImpl;

  File? get image;
  @JsonKey(ignore: true)
  _$$UploadImplCopyWith<_$UploadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'HomeEvent.initilize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? image) readTextFromImage,
    required TResult Function(File? image) upload,
    required TResult Function() initilize,
    required TResult Function() launchCamera,
    required TResult Function() scan,
    required TResult Function() disposeCamera,
  }) {
    return initilize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? image)? readTextFromImage,
    TResult? Function(File? image)? upload,
    TResult? Function()? initilize,
    TResult? Function()? launchCamera,
    TResult? Function()? scan,
    TResult? Function()? disposeCamera,
  }) {
    return initilize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? image)? readTextFromImage,
    TResult Function(File? image)? upload,
    TResult Function()? initilize,
    TResult Function()? launchCamera,
    TResult Function()? scan,
    TResult Function()? disposeCamera,
    required TResult orElse(),
  }) {
    if (initilize != null) {
      return initilize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadTextFromImage value) readTextFromImage,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Initialize value) initilize,
    required TResult Function(_LaunchCamera value) launchCamera,
    required TResult Function(_Scan value) scan,
    required TResult Function(_DisposeCamera value) disposeCamera,
  }) {
    return initilize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadTextFromImage value)? readTextFromImage,
    TResult? Function(_Upload value)? upload,
    TResult? Function(_Initialize value)? initilize,
    TResult? Function(_LaunchCamera value)? launchCamera,
    TResult? Function(_Scan value)? scan,
    TResult? Function(_DisposeCamera value)? disposeCamera,
  }) {
    return initilize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadTextFromImage value)? readTextFromImage,
    TResult Function(_Upload value)? upload,
    TResult Function(_Initialize value)? initilize,
    TResult Function(_LaunchCamera value)? launchCamera,
    TResult Function(_Scan value)? scan,
    TResult Function(_DisposeCamera value)? disposeCamera,
    required TResult orElse(),
  }) {
    if (initilize != null) {
      return initilize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements HomeEvent {
  const factory _Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$LaunchCameraImplCopyWith<$Res> {
  factory _$$LaunchCameraImplCopyWith(
          _$LaunchCameraImpl value, $Res Function(_$LaunchCameraImpl) then) =
      __$$LaunchCameraImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LaunchCameraImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LaunchCameraImpl>
    implements _$$LaunchCameraImplCopyWith<$Res> {
  __$$LaunchCameraImplCopyWithImpl(
      _$LaunchCameraImpl _value, $Res Function(_$LaunchCameraImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LaunchCameraImpl implements _LaunchCamera {
  const _$LaunchCameraImpl();

  @override
  String toString() {
    return 'HomeEvent.launchCamera()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LaunchCameraImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? image) readTextFromImage,
    required TResult Function(File? image) upload,
    required TResult Function() initilize,
    required TResult Function() launchCamera,
    required TResult Function() scan,
    required TResult Function() disposeCamera,
  }) {
    return launchCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? image)? readTextFromImage,
    TResult? Function(File? image)? upload,
    TResult? Function()? initilize,
    TResult? Function()? launchCamera,
    TResult? Function()? scan,
    TResult? Function()? disposeCamera,
  }) {
    return launchCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? image)? readTextFromImage,
    TResult Function(File? image)? upload,
    TResult Function()? initilize,
    TResult Function()? launchCamera,
    TResult Function()? scan,
    TResult Function()? disposeCamera,
    required TResult orElse(),
  }) {
    if (launchCamera != null) {
      return launchCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadTextFromImage value) readTextFromImage,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Initialize value) initilize,
    required TResult Function(_LaunchCamera value) launchCamera,
    required TResult Function(_Scan value) scan,
    required TResult Function(_DisposeCamera value) disposeCamera,
  }) {
    return launchCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadTextFromImage value)? readTextFromImage,
    TResult? Function(_Upload value)? upload,
    TResult? Function(_Initialize value)? initilize,
    TResult? Function(_LaunchCamera value)? launchCamera,
    TResult? Function(_Scan value)? scan,
    TResult? Function(_DisposeCamera value)? disposeCamera,
  }) {
    return launchCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadTextFromImage value)? readTextFromImage,
    TResult Function(_Upload value)? upload,
    TResult Function(_Initialize value)? initilize,
    TResult Function(_LaunchCamera value)? launchCamera,
    TResult Function(_Scan value)? scan,
    TResult Function(_DisposeCamera value)? disposeCamera,
    required TResult orElse(),
  }) {
    if (launchCamera != null) {
      return launchCamera(this);
    }
    return orElse();
  }
}

abstract class _LaunchCamera implements HomeEvent {
  const factory _LaunchCamera() = _$LaunchCameraImpl;
}

/// @nodoc
abstract class _$$ScanImplCopyWith<$Res> {
  factory _$$ScanImplCopyWith(
          _$ScanImpl value, $Res Function(_$ScanImpl) then) =
      __$$ScanImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScanImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ScanImpl>
    implements _$$ScanImplCopyWith<$Res> {
  __$$ScanImplCopyWithImpl(_$ScanImpl _value, $Res Function(_$ScanImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScanImpl implements _Scan {
  const _$ScanImpl();

  @override
  String toString() {
    return 'HomeEvent.scan()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScanImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? image) readTextFromImage,
    required TResult Function(File? image) upload,
    required TResult Function() initilize,
    required TResult Function() launchCamera,
    required TResult Function() scan,
    required TResult Function() disposeCamera,
  }) {
    return scan();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? image)? readTextFromImage,
    TResult? Function(File? image)? upload,
    TResult? Function()? initilize,
    TResult? Function()? launchCamera,
    TResult? Function()? scan,
    TResult? Function()? disposeCamera,
  }) {
    return scan?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? image)? readTextFromImage,
    TResult Function(File? image)? upload,
    TResult Function()? initilize,
    TResult Function()? launchCamera,
    TResult Function()? scan,
    TResult Function()? disposeCamera,
    required TResult orElse(),
  }) {
    if (scan != null) {
      return scan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadTextFromImage value) readTextFromImage,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Initialize value) initilize,
    required TResult Function(_LaunchCamera value) launchCamera,
    required TResult Function(_Scan value) scan,
    required TResult Function(_DisposeCamera value) disposeCamera,
  }) {
    return scan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadTextFromImage value)? readTextFromImage,
    TResult? Function(_Upload value)? upload,
    TResult? Function(_Initialize value)? initilize,
    TResult? Function(_LaunchCamera value)? launchCamera,
    TResult? Function(_Scan value)? scan,
    TResult? Function(_DisposeCamera value)? disposeCamera,
  }) {
    return scan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadTextFromImage value)? readTextFromImage,
    TResult Function(_Upload value)? upload,
    TResult Function(_Initialize value)? initilize,
    TResult Function(_LaunchCamera value)? launchCamera,
    TResult Function(_Scan value)? scan,
    TResult Function(_DisposeCamera value)? disposeCamera,
    required TResult orElse(),
  }) {
    if (scan != null) {
      return scan(this);
    }
    return orElse();
  }
}

abstract class _Scan implements HomeEvent {
  const factory _Scan() = _$ScanImpl;
}

/// @nodoc
abstract class _$$DisposeCameraImplCopyWith<$Res> {
  factory _$$DisposeCameraImplCopyWith(
          _$DisposeCameraImpl value, $Res Function(_$DisposeCameraImpl) then) =
      __$$DisposeCameraImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeCameraImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DisposeCameraImpl>
    implements _$$DisposeCameraImplCopyWith<$Res> {
  __$$DisposeCameraImplCopyWithImpl(
      _$DisposeCameraImpl _value, $Res Function(_$DisposeCameraImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisposeCameraImpl implements _DisposeCamera {
  const _$DisposeCameraImpl();

  @override
  String toString() {
    return 'HomeEvent.disposeCamera()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisposeCameraImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File? image) readTextFromImage,
    required TResult Function(File? image) upload,
    required TResult Function() initilize,
    required TResult Function() launchCamera,
    required TResult Function() scan,
    required TResult Function() disposeCamera,
  }) {
    return disposeCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File? image)? readTextFromImage,
    TResult? Function(File? image)? upload,
    TResult? Function()? initilize,
    TResult? Function()? launchCamera,
    TResult? Function()? scan,
    TResult? Function()? disposeCamera,
  }) {
    return disposeCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File? image)? readTextFromImage,
    TResult Function(File? image)? upload,
    TResult Function()? initilize,
    TResult Function()? launchCamera,
    TResult Function()? scan,
    TResult Function()? disposeCamera,
    required TResult orElse(),
  }) {
    if (disposeCamera != null) {
      return disposeCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadTextFromImage value) readTextFromImage,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Initialize value) initilize,
    required TResult Function(_LaunchCamera value) launchCamera,
    required TResult Function(_Scan value) scan,
    required TResult Function(_DisposeCamera value) disposeCamera,
  }) {
    return disposeCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadTextFromImage value)? readTextFromImage,
    TResult? Function(_Upload value)? upload,
    TResult? Function(_Initialize value)? initilize,
    TResult? Function(_LaunchCamera value)? launchCamera,
    TResult? Function(_Scan value)? scan,
    TResult? Function(_DisposeCamera value)? disposeCamera,
  }) {
    return disposeCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadTextFromImage value)? readTextFromImage,
    TResult Function(_Upload value)? upload,
    TResult Function(_Initialize value)? initilize,
    TResult Function(_LaunchCamera value)? launchCamera,
    TResult Function(_Scan value)? scan,
    TResult Function(_DisposeCamera value)? disposeCamera,
    required TResult orElse(),
  }) {
    if (disposeCamera != null) {
      return disposeCamera(this);
    }
    return orElse();
  }
}

abstract class _DisposeCamera implements HomeEvent {
  const factory _DisposeCamera() = _$DisposeCameraImpl;
}

/// @nodoc
mixin _$HomeState {
//@Default(null) File? file,
// @Default(false) bool? isConverting,
// @Default('') String? convertedText,
// @Default(false) bool? hasConverted,
// @Default(HomeStatus.initial) HomeStatus status,
// @Default(false) bool isDetecting,
// @Default(false) bool isCameraReady,
// @Default([]) List<CameraDescription> cameras
  HomeStatus get status => throw _privateConstructorUsedError;
  CameraController? get controller => throw _privateConstructorUsedError;
  String? get ocrText => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isDisposed => throw _privateConstructorUsedError;
  bool? get canRetry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {HomeStatus status,
      CameraController? controller,
      String? ocrText,
      String? errorMessage,
      bool? isDisposed,
      bool? canRetry});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? controller = freezed,
    Object? ocrText = freezed,
    Object? errorMessage = freezed,
    Object? isDisposed = freezed,
    Object? canRetry = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController?,
      ocrText: freezed == ocrText
          ? _value.ocrText
          : ocrText // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isDisposed: freezed == isDisposed
          ? _value.isDisposed
          : isDisposed // ignore: cast_nullable_to_non_nullable
              as bool?,
      canRetry: freezed == canRetry
          ? _value.canRetry
          : canRetry // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomeStatus status,
      CameraController? controller,
      String? ocrText,
      String? errorMessage,
      bool? isDisposed,
      bool? canRetry});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? controller = freezed,
    Object? ocrText = freezed,
    Object? errorMessage = freezed,
    Object? isDisposed = freezed,
    Object? canRetry = freezed,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController?,
      ocrText: freezed == ocrText
          ? _value.ocrText
          : ocrText // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isDisposed: freezed == isDisposed
          ? _value.isDisposed
          : isDisposed // ignore: cast_nullable_to_non_nullable
              as bool?,
      canRetry: freezed == canRetry
          ? _value.canRetry
          : canRetry // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.status,
      this.controller,
      this.ocrText,
      this.errorMessage,
      this.isDisposed = false,
      this.canRetry = false});

//@Default(null) File? file,
// @Default(false) bool? isConverting,
// @Default('') String? convertedText,
// @Default(false) bool? hasConverted,
// @Default(HomeStatus.initial) HomeStatus status,
// @Default(false) bool isDetecting,
// @Default(false) bool isCameraReady,
// @Default([]) List<CameraDescription> cameras
  @override
  final HomeStatus status;
  @override
  final CameraController? controller;
  @override
  final String? ocrText;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool? isDisposed;
  @override
  @JsonKey()
  final bool? canRetry;

  @override
  String toString() {
    return 'HomeState(status: $status, controller: $controller, ocrText: $ocrText, errorMessage: $errorMessage, isDisposed: $isDisposed, canRetry: $canRetry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.ocrText, ocrText) || other.ocrText == ocrText) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isDisposed, isDisposed) ||
                other.isDisposed == isDisposed) &&
            (identical(other.canRetry, canRetry) ||
                other.canRetry == canRetry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, controller, ocrText,
      errorMessage, isDisposed, canRetry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final HomeStatus status,
      final CameraController? controller,
      final String? ocrText,
      final String? errorMessage,
      final bool? isDisposed,
      final bool? canRetry}) = _$HomeStateImpl;

  @override //@Default(null) File? file,
// @Default(false) bool? isConverting,
// @Default('') String? convertedText,
// @Default(false) bool? hasConverted,
// @Default(HomeStatus.initial) HomeStatus status,
// @Default(false) bool isDetecting,
// @Default(false) bool isCameraReady,
// @Default([]) List<CameraDescription> cameras
  HomeStatus get status;
  @override
  CameraController? get controller;
  @override
  String? get ocrText;
  @override
  String? get errorMessage;
  @override
  bool? get isDisposed;
  @override
  bool? get canRetry;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
