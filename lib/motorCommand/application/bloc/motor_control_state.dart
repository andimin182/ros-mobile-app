part of 'motor_control_bloc.dart';

@freezed
class MotorControlState with _$MotorControlState {
  const factory MotorControlState({
    required bool isMovingForward,
    required bool isMovingBackward,
    required bool isTurningLeft,
    required bool isTurningRight,
    required bool isStop,
    required bool isConnected,
    required bool showError,
    required Stream<Object> rosStream,
  }) = _MotorControlState;

  factory MotorControlState.initial() {
    return MotorControlState(
      isMovingForward: false,
      isMovingBackward: false,
      isTurningLeft: false,
      isTurningRight: false,
      isStop: true,
      isConnected: false,
      rosStream: Stream.empty(),
      showError: false,
    );
  }
}
