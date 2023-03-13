// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'motor_control_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MotorControlEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() moveForward,
    required TResult Function() moveBackward,
    required TResult Function() turnLeft,
    required TResult Function() turnRight,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? moveForward,
    TResult? Function()? moveBackward,
    TResult? Function()? turnLeft,
    TResult? Function()? turnRight,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? moveForward,
    TResult Function()? moveBackward,
    TResult Function()? turnLeft,
    TResult Function()? turnRight,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveForward value) moveForward,
    required TResult Function(MoveBackward value) moveBackward,
    required TResult Function(TurnLeft value) turnLeft,
    required TResult Function(TurnRight value) turnRight,
    required TResult Function(Stop value) stop,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveForward value)? moveForward,
    TResult? Function(MoveBackward value)? moveBackward,
    TResult? Function(TurnLeft value)? turnLeft,
    TResult? Function(TurnRight value)? turnRight,
    TResult? Function(Stop value)? stop,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveForward value)? moveForward,
    TResult Function(MoveBackward value)? moveBackward,
    TResult Function(TurnLeft value)? turnLeft,
    TResult Function(TurnRight value)? turnRight,
    TResult Function(Stop value)? stop,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotorControlEventCopyWith<$Res> {
  factory $MotorControlEventCopyWith(
          MotorControlEvent value, $Res Function(MotorControlEvent) then) =
      _$MotorControlEventCopyWithImpl<$Res, MotorControlEvent>;
}

/// @nodoc
class _$MotorControlEventCopyWithImpl<$Res, $Val extends MotorControlEvent>
    implements $MotorControlEventCopyWith<$Res> {
  _$MotorControlEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MoveForwardCopyWith<$Res> {
  factory _$$MoveForwardCopyWith(
          _$MoveForward value, $Res Function(_$MoveForward) then) =
      __$$MoveForwardCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoveForwardCopyWithImpl<$Res>
    extends _$MotorControlEventCopyWithImpl<$Res, _$MoveForward>
    implements _$$MoveForwardCopyWith<$Res> {
  __$$MoveForwardCopyWithImpl(
      _$MoveForward _value, $Res Function(_$MoveForward) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MoveForward implements MoveForward {
  const _$MoveForward();

  @override
  String toString() {
    return 'MotorControlEvent.moveForward()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MoveForward);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() moveForward,
    required TResult Function() moveBackward,
    required TResult Function() turnLeft,
    required TResult Function() turnRight,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return moveForward();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? moveForward,
    TResult? Function()? moveBackward,
    TResult? Function()? turnLeft,
    TResult? Function()? turnRight,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return moveForward?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? moveForward,
    TResult Function()? moveBackward,
    TResult Function()? turnLeft,
    TResult Function()? turnRight,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (moveForward != null) {
      return moveForward();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveForward value) moveForward,
    required TResult Function(MoveBackward value) moveBackward,
    required TResult Function(TurnLeft value) turnLeft,
    required TResult Function(TurnRight value) turnRight,
    required TResult Function(Stop value) stop,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) {
    return moveForward(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveForward value)? moveForward,
    TResult? Function(MoveBackward value)? moveBackward,
    TResult? Function(TurnLeft value)? turnLeft,
    TResult? Function(TurnRight value)? turnRight,
    TResult? Function(Stop value)? stop,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) {
    return moveForward?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveForward value)? moveForward,
    TResult Function(MoveBackward value)? moveBackward,
    TResult Function(TurnLeft value)? turnLeft,
    TResult Function(TurnRight value)? turnRight,
    TResult Function(Stop value)? stop,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (moveForward != null) {
      return moveForward(this);
    }
    return orElse();
  }
}

abstract class MoveForward implements MotorControlEvent {
  const factory MoveForward() = _$MoveForward;
}

/// @nodoc
abstract class _$$MoveBackwardCopyWith<$Res> {
  factory _$$MoveBackwardCopyWith(
          _$MoveBackward value, $Res Function(_$MoveBackward) then) =
      __$$MoveBackwardCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoveBackwardCopyWithImpl<$Res>
    extends _$MotorControlEventCopyWithImpl<$Res, _$MoveBackward>
    implements _$$MoveBackwardCopyWith<$Res> {
  __$$MoveBackwardCopyWithImpl(
      _$MoveBackward _value, $Res Function(_$MoveBackward) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MoveBackward implements MoveBackward {
  const _$MoveBackward();

  @override
  String toString() {
    return 'MotorControlEvent.moveBackward()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MoveBackward);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() moveForward,
    required TResult Function() moveBackward,
    required TResult Function() turnLeft,
    required TResult Function() turnRight,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return moveBackward();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? moveForward,
    TResult? Function()? moveBackward,
    TResult? Function()? turnLeft,
    TResult? Function()? turnRight,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return moveBackward?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? moveForward,
    TResult Function()? moveBackward,
    TResult Function()? turnLeft,
    TResult Function()? turnRight,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (moveBackward != null) {
      return moveBackward();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveForward value) moveForward,
    required TResult Function(MoveBackward value) moveBackward,
    required TResult Function(TurnLeft value) turnLeft,
    required TResult Function(TurnRight value) turnRight,
    required TResult Function(Stop value) stop,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) {
    return moveBackward(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveForward value)? moveForward,
    TResult? Function(MoveBackward value)? moveBackward,
    TResult? Function(TurnLeft value)? turnLeft,
    TResult? Function(TurnRight value)? turnRight,
    TResult? Function(Stop value)? stop,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) {
    return moveBackward?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveForward value)? moveForward,
    TResult Function(MoveBackward value)? moveBackward,
    TResult Function(TurnLeft value)? turnLeft,
    TResult Function(TurnRight value)? turnRight,
    TResult Function(Stop value)? stop,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (moveBackward != null) {
      return moveBackward(this);
    }
    return orElse();
  }
}

abstract class MoveBackward implements MotorControlEvent {
  const factory MoveBackward() = _$MoveBackward;
}

/// @nodoc
abstract class _$$TurnLeftCopyWith<$Res> {
  factory _$$TurnLeftCopyWith(
          _$TurnLeft value, $Res Function(_$TurnLeft) then) =
      __$$TurnLeftCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TurnLeftCopyWithImpl<$Res>
    extends _$MotorControlEventCopyWithImpl<$Res, _$TurnLeft>
    implements _$$TurnLeftCopyWith<$Res> {
  __$$TurnLeftCopyWithImpl(_$TurnLeft _value, $Res Function(_$TurnLeft) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TurnLeft implements TurnLeft {
  const _$TurnLeft();

  @override
  String toString() {
    return 'MotorControlEvent.turnLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TurnLeft);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() moveForward,
    required TResult Function() moveBackward,
    required TResult Function() turnLeft,
    required TResult Function() turnRight,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return turnLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? moveForward,
    TResult? Function()? moveBackward,
    TResult? Function()? turnLeft,
    TResult? Function()? turnRight,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return turnLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? moveForward,
    TResult Function()? moveBackward,
    TResult Function()? turnLeft,
    TResult Function()? turnRight,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (turnLeft != null) {
      return turnLeft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveForward value) moveForward,
    required TResult Function(MoveBackward value) moveBackward,
    required TResult Function(TurnLeft value) turnLeft,
    required TResult Function(TurnRight value) turnRight,
    required TResult Function(Stop value) stop,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) {
    return turnLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveForward value)? moveForward,
    TResult? Function(MoveBackward value)? moveBackward,
    TResult? Function(TurnLeft value)? turnLeft,
    TResult? Function(TurnRight value)? turnRight,
    TResult? Function(Stop value)? stop,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) {
    return turnLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveForward value)? moveForward,
    TResult Function(MoveBackward value)? moveBackward,
    TResult Function(TurnLeft value)? turnLeft,
    TResult Function(TurnRight value)? turnRight,
    TResult Function(Stop value)? stop,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (turnLeft != null) {
      return turnLeft(this);
    }
    return orElse();
  }
}

abstract class TurnLeft implements MotorControlEvent {
  const factory TurnLeft() = _$TurnLeft;
}

/// @nodoc
abstract class _$$TurnRightCopyWith<$Res> {
  factory _$$TurnRightCopyWith(
          _$TurnRight value, $Res Function(_$TurnRight) then) =
      __$$TurnRightCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TurnRightCopyWithImpl<$Res>
    extends _$MotorControlEventCopyWithImpl<$Res, _$TurnRight>
    implements _$$TurnRightCopyWith<$Res> {
  __$$TurnRightCopyWithImpl(
      _$TurnRight _value, $Res Function(_$TurnRight) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TurnRight implements TurnRight {
  const _$TurnRight();

  @override
  String toString() {
    return 'MotorControlEvent.turnRight()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TurnRight);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() moveForward,
    required TResult Function() moveBackward,
    required TResult Function() turnLeft,
    required TResult Function() turnRight,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return turnRight();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? moveForward,
    TResult? Function()? moveBackward,
    TResult? Function()? turnLeft,
    TResult? Function()? turnRight,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return turnRight?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? moveForward,
    TResult Function()? moveBackward,
    TResult Function()? turnLeft,
    TResult Function()? turnRight,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (turnRight != null) {
      return turnRight();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveForward value) moveForward,
    required TResult Function(MoveBackward value) moveBackward,
    required TResult Function(TurnLeft value) turnLeft,
    required TResult Function(TurnRight value) turnRight,
    required TResult Function(Stop value) stop,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) {
    return turnRight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveForward value)? moveForward,
    TResult? Function(MoveBackward value)? moveBackward,
    TResult? Function(TurnLeft value)? turnLeft,
    TResult? Function(TurnRight value)? turnRight,
    TResult? Function(Stop value)? stop,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) {
    return turnRight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveForward value)? moveForward,
    TResult Function(MoveBackward value)? moveBackward,
    TResult Function(TurnLeft value)? turnLeft,
    TResult Function(TurnRight value)? turnRight,
    TResult Function(Stop value)? stop,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (turnRight != null) {
      return turnRight(this);
    }
    return orElse();
  }
}

abstract class TurnRight implements MotorControlEvent {
  const factory TurnRight() = _$TurnRight;
}

/// @nodoc
abstract class _$$StopCopyWith<$Res> {
  factory _$$StopCopyWith(_$Stop value, $Res Function(_$Stop) then) =
      __$$StopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopCopyWithImpl<$Res>
    extends _$MotorControlEventCopyWithImpl<$Res, _$Stop>
    implements _$$StopCopyWith<$Res> {
  __$$StopCopyWithImpl(_$Stop _value, $Res Function(_$Stop) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Stop implements Stop {
  const _$Stop();

  @override
  String toString() {
    return 'MotorControlEvent.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Stop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() moveForward,
    required TResult Function() moveBackward,
    required TResult Function() turnLeft,
    required TResult Function() turnRight,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? moveForward,
    TResult? Function()? moveBackward,
    TResult? Function()? turnLeft,
    TResult? Function()? turnRight,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? moveForward,
    TResult Function()? moveBackward,
    TResult Function()? turnLeft,
    TResult Function()? turnRight,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveForward value) moveForward,
    required TResult Function(MoveBackward value) moveBackward,
    required TResult Function(TurnLeft value) turnLeft,
    required TResult Function(TurnRight value) turnRight,
    required TResult Function(Stop value) stop,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveForward value)? moveForward,
    TResult? Function(MoveBackward value)? moveBackward,
    TResult? Function(TurnLeft value)? turnLeft,
    TResult? Function(TurnRight value)? turnRight,
    TResult? Function(Stop value)? stop,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveForward value)? moveForward,
    TResult Function(MoveBackward value)? moveBackward,
    TResult Function(TurnLeft value)? turnLeft,
    TResult Function(TurnRight value)? turnRight,
    TResult Function(Stop value)? stop,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class Stop implements MotorControlEvent {
  const factory Stop() = _$Stop;
}

/// @nodoc
abstract class _$$ConnectCopyWith<$Res> {
  factory _$$ConnectCopyWith(_$Connect value, $Res Function(_$Connect) then) =
      __$$ConnectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectCopyWithImpl<$Res>
    extends _$MotorControlEventCopyWithImpl<$Res, _$Connect>
    implements _$$ConnectCopyWith<$Res> {
  __$$ConnectCopyWithImpl(_$Connect _value, $Res Function(_$Connect) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Connect implements Connect {
  const _$Connect();

  @override
  String toString() {
    return 'MotorControlEvent.connect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Connect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() moveForward,
    required TResult Function() moveBackward,
    required TResult Function() turnLeft,
    required TResult Function() turnRight,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? moveForward,
    TResult? Function()? moveBackward,
    TResult? Function()? turnLeft,
    TResult? Function()? turnRight,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? moveForward,
    TResult Function()? moveBackward,
    TResult Function()? turnLeft,
    TResult Function()? turnRight,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveForward value) moveForward,
    required TResult Function(MoveBackward value) moveBackward,
    required TResult Function(TurnLeft value) turnLeft,
    required TResult Function(TurnRight value) turnRight,
    required TResult Function(Stop value) stop,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveForward value)? moveForward,
    TResult? Function(MoveBackward value)? moveBackward,
    TResult? Function(TurnLeft value)? turnLeft,
    TResult? Function(TurnRight value)? turnRight,
    TResult? Function(Stop value)? stop,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveForward value)? moveForward,
    TResult Function(MoveBackward value)? moveBackward,
    TResult Function(TurnLeft value)? turnLeft,
    TResult Function(TurnRight value)? turnRight,
    TResult Function(Stop value)? stop,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class Connect implements MotorControlEvent {
  const factory Connect() = _$Connect;
}

/// @nodoc
abstract class _$$DisconnectCopyWith<$Res> {
  factory _$$DisconnectCopyWith(
          _$Disconnect value, $Res Function(_$Disconnect) then) =
      __$$DisconnectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectCopyWithImpl<$Res>
    extends _$MotorControlEventCopyWithImpl<$Res, _$Disconnect>
    implements _$$DisconnectCopyWith<$Res> {
  __$$DisconnectCopyWithImpl(
      _$Disconnect _value, $Res Function(_$Disconnect) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Disconnect implements Disconnect {
  const _$Disconnect();

  @override
  String toString() {
    return 'MotorControlEvent.disconnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Disconnect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() moveForward,
    required TResult Function() moveBackward,
    required TResult Function() turnLeft,
    required TResult Function() turnRight,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? moveForward,
    TResult? Function()? moveBackward,
    TResult? Function()? turnLeft,
    TResult? Function()? turnRight,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? moveForward,
    TResult Function()? moveBackward,
    TResult Function()? turnLeft,
    TResult Function()? turnRight,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveForward value) moveForward,
    required TResult Function(MoveBackward value) moveBackward,
    required TResult Function(TurnLeft value) turnLeft,
    required TResult Function(TurnRight value) turnRight,
    required TResult Function(Stop value) stop,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveForward value)? moveForward,
    TResult? Function(MoveBackward value)? moveBackward,
    TResult? Function(TurnLeft value)? turnLeft,
    TResult? Function(TurnRight value)? turnRight,
    TResult? Function(Stop value)? stop,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveForward value)? moveForward,
    TResult Function(MoveBackward value)? moveBackward,
    TResult Function(TurnLeft value)? turnLeft,
    TResult Function(TurnRight value)? turnRight,
    TResult Function(Stop value)? stop,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class Disconnect implements MotorControlEvent {
  const factory Disconnect() = _$Disconnect;
}

/// @nodoc
mixin _$MotorControlState {
  bool get isMovingForward => throw _privateConstructorUsedError;
  bool get isMovingBackward => throw _privateConstructorUsedError;
  bool get isTurningLeft => throw _privateConstructorUsedError;
  bool get isTurningRight => throw _privateConstructorUsedError;
  bool get isStop => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  Stream<Object> get rosStream => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MotorControlStateCopyWith<MotorControlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotorControlStateCopyWith<$Res> {
  factory $MotorControlStateCopyWith(
          MotorControlState value, $Res Function(MotorControlState) then) =
      _$MotorControlStateCopyWithImpl<$Res, MotorControlState>;
  @useResult
  $Res call(
      {bool isMovingForward,
      bool isMovingBackward,
      bool isTurningLeft,
      bool isTurningRight,
      bool isStop,
      bool isConnected,
      bool showError,
      Stream<Object> rosStream});
}

/// @nodoc
class _$MotorControlStateCopyWithImpl<$Res, $Val extends MotorControlState>
    implements $MotorControlStateCopyWith<$Res> {
  _$MotorControlStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMovingForward = null,
    Object? isMovingBackward = null,
    Object? isTurningLeft = null,
    Object? isTurningRight = null,
    Object? isStop = null,
    Object? isConnected = null,
    Object? showError = null,
    Object? rosStream = null,
  }) {
    return _then(_value.copyWith(
      isMovingForward: null == isMovingForward
          ? _value.isMovingForward
          : isMovingForward // ignore: cast_nullable_to_non_nullable
              as bool,
      isMovingBackward: null == isMovingBackward
          ? _value.isMovingBackward
          : isMovingBackward // ignore: cast_nullable_to_non_nullable
              as bool,
      isTurningLeft: null == isTurningLeft
          ? _value.isTurningLeft
          : isTurningLeft // ignore: cast_nullable_to_non_nullable
              as bool,
      isTurningRight: null == isTurningRight
          ? _value.isTurningRight
          : isTurningRight // ignore: cast_nullable_to_non_nullable
              as bool,
      isStop: null == isStop
          ? _value.isStop
          : isStop // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      rosStream: null == rosStream
          ? _value.rosStream
          : rosStream // ignore: cast_nullable_to_non_nullable
              as Stream<Object>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MotorControlStateCopyWith<$Res>
    implements $MotorControlStateCopyWith<$Res> {
  factory _$$_MotorControlStateCopyWith(_$_MotorControlState value,
          $Res Function(_$_MotorControlState) then) =
      __$$_MotorControlStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isMovingForward,
      bool isMovingBackward,
      bool isTurningLeft,
      bool isTurningRight,
      bool isStop,
      bool isConnected,
      bool showError,
      Stream<Object> rosStream});
}

/// @nodoc
class __$$_MotorControlStateCopyWithImpl<$Res>
    extends _$MotorControlStateCopyWithImpl<$Res, _$_MotorControlState>
    implements _$$_MotorControlStateCopyWith<$Res> {
  __$$_MotorControlStateCopyWithImpl(
      _$_MotorControlState _value, $Res Function(_$_MotorControlState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMovingForward = null,
    Object? isMovingBackward = null,
    Object? isTurningLeft = null,
    Object? isTurningRight = null,
    Object? isStop = null,
    Object? isConnected = null,
    Object? showError = null,
    Object? rosStream = null,
  }) {
    return _then(_$_MotorControlState(
      isMovingForward: null == isMovingForward
          ? _value.isMovingForward
          : isMovingForward // ignore: cast_nullable_to_non_nullable
              as bool,
      isMovingBackward: null == isMovingBackward
          ? _value.isMovingBackward
          : isMovingBackward // ignore: cast_nullable_to_non_nullable
              as bool,
      isTurningLeft: null == isTurningLeft
          ? _value.isTurningLeft
          : isTurningLeft // ignore: cast_nullable_to_non_nullable
              as bool,
      isTurningRight: null == isTurningRight
          ? _value.isTurningRight
          : isTurningRight // ignore: cast_nullable_to_non_nullable
              as bool,
      isStop: null == isStop
          ? _value.isStop
          : isStop // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      rosStream: null == rosStream
          ? _value.rosStream
          : rosStream // ignore: cast_nullable_to_non_nullable
              as Stream<Object>,
    ));
  }
}

/// @nodoc

class _$_MotorControlState implements _MotorControlState {
  const _$_MotorControlState(
      {required this.isMovingForward,
      required this.isMovingBackward,
      required this.isTurningLeft,
      required this.isTurningRight,
      required this.isStop,
      required this.isConnected,
      required this.showError,
      required this.rosStream});

  @override
  final bool isMovingForward;
  @override
  final bool isMovingBackward;
  @override
  final bool isTurningLeft;
  @override
  final bool isTurningRight;
  @override
  final bool isStop;
  @override
  final bool isConnected;
  @override
  final bool showError;
  @override
  final Stream<Object> rosStream;

  @override
  String toString() {
    return 'MotorControlState(isMovingForward: $isMovingForward, isMovingBackward: $isMovingBackward, isTurningLeft: $isTurningLeft, isTurningRight: $isTurningRight, isStop: $isStop, isConnected: $isConnected, showError: $showError, rosStream: $rosStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MotorControlState &&
            (identical(other.isMovingForward, isMovingForward) ||
                other.isMovingForward == isMovingForward) &&
            (identical(other.isMovingBackward, isMovingBackward) ||
                other.isMovingBackward == isMovingBackward) &&
            (identical(other.isTurningLeft, isTurningLeft) ||
                other.isTurningLeft == isTurningLeft) &&
            (identical(other.isTurningRight, isTurningRight) ||
                other.isTurningRight == isTurningRight) &&
            (identical(other.isStop, isStop) || other.isStop == isStop) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.rosStream, rosStream) ||
                other.rosStream == rosStream));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isMovingForward,
      isMovingBackward,
      isTurningLeft,
      isTurningRight,
      isStop,
      isConnected,
      showError,
      rosStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MotorControlStateCopyWith<_$_MotorControlState> get copyWith =>
      __$$_MotorControlStateCopyWithImpl<_$_MotorControlState>(
          this, _$identity);
}

abstract class _MotorControlState implements MotorControlState {
  const factory _MotorControlState(
      {required final bool isMovingForward,
      required final bool isMovingBackward,
      required final bool isTurningLeft,
      required final bool isTurningRight,
      required final bool isStop,
      required final bool isConnected,
      required final bool showError,
      required final Stream<Object> rosStream}) = _$_MotorControlState;

  @override
  bool get isMovingForward;
  @override
  bool get isMovingBackward;
  @override
  bool get isTurningLeft;
  @override
  bool get isTurningRight;
  @override
  bool get isStop;
  @override
  bool get isConnected;
  @override
  bool get showError;
  @override
  Stream<Object> get rosStream;
  @override
  @JsonKey(ignore: true)
  _$$_MotorControlStateCopyWith<_$_MotorControlState> get copyWith =>
      throw _privateConstructorUsedError;
}
