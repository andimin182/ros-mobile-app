import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ros_app/motorCommand/domain/repositories/control_repo.dart';

part 'motor_control_event.dart';
part 'motor_control_state.dart';
part 'motor_control_bloc.freezed.dart';

@injectable
class MotorControlBloc extends Bloc<MotorControlEvent, MotorControlState> {
  final MotorCommand motorCommand;

  MotorControlBloc({
    required this.motorCommand,
  }) : super(MotorControlState.initial()) {
    on<MotorControlEvent>((event, emit) async {
      await event.map(
        moveForward: (_) async {
          if (state.isConnected) {
            emit(state.copyWith(
              isMovingForward: true,
              isMovingBackward: false,
              isTurningLeft: false,
              isTurningRight: false,
              isStop: false,
            ));
            await motorCommand.forwardCommand();
          }
        },
        moveBackward: (_) async {
          if (state.isConnected) {
            emit(state.copyWith(
              isMovingForward: false,
              isMovingBackward: true,
              isTurningLeft: false,
              isTurningRight: false,
              isStop: false,
            ));
            await motorCommand.backwardCommand();
          }
        },
        turnLeft: (_) async {
          if (state.isConnected) {
            emit(state.copyWith(
              isMovingForward: false,
              isMovingBackward: false,
              isTurningLeft: true,
              isTurningRight: false,
              isStop: false,
            ));
            await motorCommand.leftCommand();
          }
        },
        turnRight: (_) async {
          if (state.isConnected) {
            emit(state.copyWith(
              isMovingForward: false,
              isMovingBackward: false,
              isTurningLeft: false,
              isTurningRight: true,
              isStop: false,
            ));
            await motorCommand.rightCommand();
          }
        },
        stop: (_) async {
          if (state.isConnected) {
            emit(state.copyWith(
              isMovingForward: false,
              isMovingBackward: false,
              isTurningLeft: false,
              isTurningRight: false,
              isStop: true,
            ));
            await motorCommand.stopCommand();
          }
        },
        connect: (_) async {
          // Connect to ros topic
          emit(state.copyWith(
            isMovingForward: false,
            isMovingBackward: false,
            isTurningLeft: false,
            isTurningRight: false,
            isStop: true,
            isConnected: true,
            rosStream: motorCommand.ros.statusStream,
          ));
          motorCommand.connectToRos();
        },
        disconnect: (_) {
          // Disconnect from ros topic
          emit(state.copyWith(
            isMovingForward: false,
            isMovingBackward: false,
            isTurningLeft: false,
            isTurningRight: false,
            isStop: true,
            isConnected: false,
            rosStream: Stream.empty(),
          ));
          motorCommand.disconnectFromRos();
        },
      );
    });
  }
}
