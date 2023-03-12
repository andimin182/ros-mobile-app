part of 'motor_control_bloc.dart';

@freezed
class MotorControlEvent with _$MotorControlEvent {
  const factory MotorControlEvent.moveForward() = MoveForward;
  const factory MotorControlEvent.moveBackward() = MoveBackward;
  const factory MotorControlEvent.turnLeft() = TurnLeft;
  const factory MotorControlEvent.turnRight() = TurnRight;
  const factory MotorControlEvent.stop() = Stop;
  const factory MotorControlEvent.connect() = Connect;
  const factory MotorControlEvent.disconnect() = Disconnect;
}
