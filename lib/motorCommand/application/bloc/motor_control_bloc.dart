import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ros_app/control.dart';

part 'motor_control_event.dart';
part 'motor_control_state.dart';
part 'motor_control_bloc.freezed.dart';

@injectable
class MotorControlBloc extends Bloc<MotorControlEvent, MotorControlState> {
  final MotorCommand motorCommand;

  MotorControlBloc({
    required this.motorCommand,
  }) : super(MotorControlState.initial()) {
    on<MotorControlEvent>((event, emit) {
      event.map(
        moveForward: (_) {
          if (state.isConnected) {
            emit(state.copyWith(
              isMovingForward: true,
              isMovingBackward: false,
              isTurningLeft: false,
              isTurningRight: false,
              isStop: false,
            ));
            motorCommand.forwardCommand();
          }
        },
        moveBackward: (_) {
          if (state.isConnected) {
            emit(state.copyWith(
              isMovingForward: false,
              isMovingBackward: true,
              isTurningLeft: false,
              isTurningRight: false,
              isStop: false,
            ));
            motorCommand.backwardCommand();
          }
        },
        turnLeft: (_) {
          if (state.isConnected) {
            emit(state.copyWith(
              isMovingForward: false,
              isMovingBackward: false,
              isTurningLeft: true,
              isTurningRight: false,
              isStop: false,
            ));
            motorCommand.leftCommand();
          }
        },
        turnRight: (_) {
          if (state.isConnected) {
            emit(state.copyWith(
              isMovingForward: false,
              isMovingBackward: false,
              isTurningLeft: false,
              isTurningRight: true,
              isStop: false,
            ));
            motorCommand.rightCommand();
          }
        },
        stop: (_) {
          if (state.isConnected) {
            emit(state.copyWith(
              isMovingForward: false,
              isMovingBackward: false,
              isTurningLeft: false,
              isTurningRight: false,
              isStop: true,
            ));
            motorCommand.stopCommand();
          }
        },
        connect: (_) {
          if (state.isConnected) {
            // Disconnect from ros topic
            emit(state.copyWith(
              isMovingForward: false,
              isMovingBackward: false,
              isTurningLeft: false,
              isTurningRight: false,
              isStop: true,
              isConnected: false,
            ));
            motorCommand.disconnectFromRos();
          } else {
            // Connect to ros topic
            emit(state.copyWith(
              isMovingForward: false,
              isMovingBackward: false,
              isTurningLeft: false,
              isTurningRight: false,
              isStop: true,
              isConnected: true,
            ));
            motorCommand.connectToRos();
          }
        },
      );
    });
  }
}
