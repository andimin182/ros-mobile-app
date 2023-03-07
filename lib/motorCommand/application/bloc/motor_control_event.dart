part of 'motor_control_bloc.dart';

@freezed
abstract class MotorControlEvent with _$MotorControlEvent {
  const factory MotorControlEvent.moveForward() = _MoveForward;
  const factory MotorControlEvent.moveBackward() = _MoveBackward;
  const factory MotorControlEvent.turnLeft() = _TurnLeft;
  const factory MotorControlEvent.turnRight() = _TurnRight;
  const factory MotorControlEvent.stop() = _Stop;
  const factory MotorControlEvent.connect() = _Connect;
}
