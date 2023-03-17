// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_node_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CameraNodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectToRos,
    required TResult Function() disconnectFromRos,
    required TResult Function(Image newImage) retrieveImageFromRos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectToRos,
    TResult? Function()? disconnectFromRos,
    TResult? Function(Image newImage)? retrieveImageFromRos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectToRos,
    TResult Function()? disconnectFromRos,
    TResult Function(Image newImage)? retrieveImageFromRos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectToRos value) connectToRos,
    required TResult Function(DisconnectFromRos value) disconnectFromRos,
    required TResult Function(RetrieveImageFromRos value) retrieveImageFromRos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectToRos value)? connectToRos,
    TResult? Function(DisconnectFromRos value)? disconnectFromRos,
    TResult? Function(RetrieveImageFromRos value)? retrieveImageFromRos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectToRos value)? connectToRos,
    TResult Function(DisconnectFromRos value)? disconnectFromRos,
    TResult Function(RetrieveImageFromRos value)? retrieveImageFromRos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraNodeEventCopyWith<$Res> {
  factory $CameraNodeEventCopyWith(
          CameraNodeEvent value, $Res Function(CameraNodeEvent) then) =
      _$CameraNodeEventCopyWithImpl<$Res, CameraNodeEvent>;
}

/// @nodoc
class _$CameraNodeEventCopyWithImpl<$Res, $Val extends CameraNodeEvent>
    implements $CameraNodeEventCopyWith<$Res> {
  _$CameraNodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectToRosCopyWith<$Res> {
  factory _$$ConnectToRosCopyWith(
          _$ConnectToRos value, $Res Function(_$ConnectToRos) then) =
      __$$ConnectToRosCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectToRosCopyWithImpl<$Res>
    extends _$CameraNodeEventCopyWithImpl<$Res, _$ConnectToRos>
    implements _$$ConnectToRosCopyWith<$Res> {
  __$$ConnectToRosCopyWithImpl(
      _$ConnectToRos _value, $Res Function(_$ConnectToRos) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectToRos implements ConnectToRos {
  const _$ConnectToRos();

  @override
  String toString() {
    return 'CameraNodeEvent.connectToRos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectToRos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectToRos,
    required TResult Function() disconnectFromRos,
    required TResult Function(Image newImage) retrieveImageFromRos,
  }) {
    return connectToRos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectToRos,
    TResult? Function()? disconnectFromRos,
    TResult? Function(Image newImage)? retrieveImageFromRos,
  }) {
    return connectToRos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectToRos,
    TResult Function()? disconnectFromRos,
    TResult Function(Image newImage)? retrieveImageFromRos,
    required TResult orElse(),
  }) {
    if (connectToRos != null) {
      return connectToRos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectToRos value) connectToRos,
    required TResult Function(DisconnectFromRos value) disconnectFromRos,
    required TResult Function(RetrieveImageFromRos value) retrieveImageFromRos,
  }) {
    return connectToRos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectToRos value)? connectToRos,
    TResult? Function(DisconnectFromRos value)? disconnectFromRos,
    TResult? Function(RetrieveImageFromRos value)? retrieveImageFromRos,
  }) {
    return connectToRos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectToRos value)? connectToRos,
    TResult Function(DisconnectFromRos value)? disconnectFromRos,
    TResult Function(RetrieveImageFromRos value)? retrieveImageFromRos,
    required TResult orElse(),
  }) {
    if (connectToRos != null) {
      return connectToRos(this);
    }
    return orElse();
  }
}

abstract class ConnectToRos implements CameraNodeEvent {
  const factory ConnectToRos() = _$ConnectToRos;
}

/// @nodoc
abstract class _$$DisconnectFromRosCopyWith<$Res> {
  factory _$$DisconnectFromRosCopyWith(
          _$DisconnectFromRos value, $Res Function(_$DisconnectFromRos) then) =
      __$$DisconnectFromRosCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectFromRosCopyWithImpl<$Res>
    extends _$CameraNodeEventCopyWithImpl<$Res, _$DisconnectFromRos>
    implements _$$DisconnectFromRosCopyWith<$Res> {
  __$$DisconnectFromRosCopyWithImpl(
      _$DisconnectFromRos _value, $Res Function(_$DisconnectFromRos) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisconnectFromRos implements DisconnectFromRos {
  const _$DisconnectFromRos();

  @override
  String toString() {
    return 'CameraNodeEvent.disconnectFromRos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectFromRos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectToRos,
    required TResult Function() disconnectFromRos,
    required TResult Function(Image newImage) retrieveImageFromRos,
  }) {
    return disconnectFromRos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectToRos,
    TResult? Function()? disconnectFromRos,
    TResult? Function(Image newImage)? retrieveImageFromRos,
  }) {
    return disconnectFromRos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectToRos,
    TResult Function()? disconnectFromRos,
    TResult Function(Image newImage)? retrieveImageFromRos,
    required TResult orElse(),
  }) {
    if (disconnectFromRos != null) {
      return disconnectFromRos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectToRos value) connectToRos,
    required TResult Function(DisconnectFromRos value) disconnectFromRos,
    required TResult Function(RetrieveImageFromRos value) retrieveImageFromRos,
  }) {
    return disconnectFromRos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectToRos value)? connectToRos,
    TResult? Function(DisconnectFromRos value)? disconnectFromRos,
    TResult? Function(RetrieveImageFromRos value)? retrieveImageFromRos,
  }) {
    return disconnectFromRos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectToRos value)? connectToRos,
    TResult Function(DisconnectFromRos value)? disconnectFromRos,
    TResult Function(RetrieveImageFromRos value)? retrieveImageFromRos,
    required TResult orElse(),
  }) {
    if (disconnectFromRos != null) {
      return disconnectFromRos(this);
    }
    return orElse();
  }
}

abstract class DisconnectFromRos implements CameraNodeEvent {
  const factory DisconnectFromRos() = _$DisconnectFromRos;
}

/// @nodoc
abstract class _$$RetrieveImageFromRosCopyWith<$Res> {
  factory _$$RetrieveImageFromRosCopyWith(_$RetrieveImageFromRos value,
          $Res Function(_$RetrieveImageFromRos) then) =
      __$$RetrieveImageFromRosCopyWithImpl<$Res>;
  @useResult
  $Res call({Image newImage});
}

/// @nodoc
class __$$RetrieveImageFromRosCopyWithImpl<$Res>
    extends _$CameraNodeEventCopyWithImpl<$Res, _$RetrieveImageFromRos>
    implements _$$RetrieveImageFromRosCopyWith<$Res> {
  __$$RetrieveImageFromRosCopyWithImpl(_$RetrieveImageFromRos _value,
      $Res Function(_$RetrieveImageFromRos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newImage = freezed,
  }) {
    return _then(_$RetrieveImageFromRos(
      newImage: freezed == newImage
          ? _value.newImage
          : newImage // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }
}

/// @nodoc

class _$RetrieveImageFromRos implements RetrieveImageFromRos {
  const _$RetrieveImageFromRos({required this.newImage});

  @override
  final Image newImage;

  @override
  String toString() {
    return 'CameraNodeEvent.retrieveImageFromRos(newImage: $newImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveImageFromRos &&
            const DeepCollectionEquality().equals(other.newImage, newImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newImage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrieveImageFromRosCopyWith<_$RetrieveImageFromRos> get copyWith =>
      __$$RetrieveImageFromRosCopyWithImpl<_$RetrieveImageFromRos>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectToRos,
    required TResult Function() disconnectFromRos,
    required TResult Function(Image newImage) retrieveImageFromRos,
  }) {
    return retrieveImageFromRos(newImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connectToRos,
    TResult? Function()? disconnectFromRos,
    TResult? Function(Image newImage)? retrieveImageFromRos,
  }) {
    return retrieveImageFromRos?.call(newImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectToRos,
    TResult Function()? disconnectFromRos,
    TResult Function(Image newImage)? retrieveImageFromRos,
    required TResult orElse(),
  }) {
    if (retrieveImageFromRos != null) {
      return retrieveImageFromRos(newImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectToRos value) connectToRos,
    required TResult Function(DisconnectFromRos value) disconnectFromRos,
    required TResult Function(RetrieveImageFromRos value) retrieveImageFromRos,
  }) {
    return retrieveImageFromRos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectToRos value)? connectToRos,
    TResult? Function(DisconnectFromRos value)? disconnectFromRos,
    TResult? Function(RetrieveImageFromRos value)? retrieveImageFromRos,
  }) {
    return retrieveImageFromRos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectToRos value)? connectToRos,
    TResult Function(DisconnectFromRos value)? disconnectFromRos,
    TResult Function(RetrieveImageFromRos value)? retrieveImageFromRos,
    required TResult orElse(),
  }) {
    if (retrieveImageFromRos != null) {
      return retrieveImageFromRos(this);
    }
    return orElse();
  }
}

abstract class RetrieveImageFromRos implements CameraNodeEvent {
  const factory RetrieveImageFromRos({required final Image newImage}) =
      _$RetrieveImageFromRos;

  Image get newImage;
  @JsonKey(ignore: true)
  _$$RetrieveImageFromRosCopyWith<_$RetrieveImageFromRos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CameraNodeState {
  bool get isConnected => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  Image? get imageState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraNodeStateCopyWith<CameraNodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraNodeStateCopyWith<$Res> {
  factory $CameraNodeStateCopyWith(
          CameraNodeState value, $Res Function(CameraNodeState) then) =
      _$CameraNodeStateCopyWithImpl<$Res, CameraNodeState>;
  @useResult
  $Res call({bool isConnected, bool isError, Image? imageState});
}

/// @nodoc
class _$CameraNodeStateCopyWithImpl<$Res, $Val extends CameraNodeState>
    implements $CameraNodeStateCopyWith<$Res> {
  _$CameraNodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? isError = null,
    Object? imageState = freezed,
  }) {
    return _then(_value.copyWith(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      imageState: freezed == imageState
          ? _value.imageState
          : imageState // ignore: cast_nullable_to_non_nullable
              as Image?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CameraNodeStateCopyWith<$Res>
    implements $CameraNodeStateCopyWith<$Res> {
  factory _$$_CameraNodeStateCopyWith(
          _$_CameraNodeState value, $Res Function(_$_CameraNodeState) then) =
      __$$_CameraNodeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isConnected, bool isError, Image? imageState});
}

/// @nodoc
class __$$_CameraNodeStateCopyWithImpl<$Res>
    extends _$CameraNodeStateCopyWithImpl<$Res, _$_CameraNodeState>
    implements _$$_CameraNodeStateCopyWith<$Res> {
  __$$_CameraNodeStateCopyWithImpl(
      _$_CameraNodeState _value, $Res Function(_$_CameraNodeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? isError = null,
    Object? imageState = freezed,
  }) {
    return _then(_$_CameraNodeState(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      imageState: freezed == imageState
          ? _value.imageState
          : imageState // ignore: cast_nullable_to_non_nullable
              as Image?,
    ));
  }
}

/// @nodoc

class _$_CameraNodeState implements _CameraNodeState {
  const _$_CameraNodeState(
      {required this.isConnected,
      required this.isError,
      required this.imageState});

  @override
  final bool isConnected;
  @override
  final bool isError;
  @override
  final Image? imageState;

  @override
  String toString() {
    return 'CameraNodeState(isConnected: $isConnected, isError: $isError, imageState: $imageState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CameraNodeState &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other.imageState, imageState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected, isError,
      const DeepCollectionEquality().hash(imageState));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CameraNodeStateCopyWith<_$_CameraNodeState> get copyWith =>
      __$$_CameraNodeStateCopyWithImpl<_$_CameraNodeState>(this, _$identity);
}

abstract class _CameraNodeState implements CameraNodeState {
  const factory _CameraNodeState(
      {required final bool isConnected,
      required final bool isError,
      required final Image? imageState}) = _$_CameraNodeState;

  @override
  bool get isConnected;
  @override
  bool get isError;
  @override
  Image? get imageState;
  @override
  @JsonKey(ignore: true)
  _$$_CameraNodeStateCopyWith<_$_CameraNodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
