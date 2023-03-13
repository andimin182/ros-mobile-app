import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ros_app/motorCommand/domain/usecases/motor_control.dart';

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
          final failureOrMove = await motorCommand.moveForward();
          failureOrMove.fold(
              (_) => emit(state.copyWith(
                    showError: true,
                  )),
              (_) => emit(state.copyWith(
                    isMovingForward: true,
                    isMovingBackward: false,
                    isTurningLeft: false,
                    isTurningRight: false,
                    isStop: false,
                    showError: false,
                  )));
        },
        moveBackward: (_) async {
          final failureOrMove = await motorCommand.moveBackward();
          failureOrMove.fold(
              (_) => emit(state.copyWith(
                    showError: true,
                  )),
              (_) => emit(state.copyWith(
                    isMovingForward: false,
                    isMovingBackward: true,
                    isTurningLeft: false,
                    isTurningRight: false,
                    isStop: false,
                    showError: false,
                  )));
        },
        turnLeft: (_) async {
          final failureOrMove = await motorCommand.turnLeft();
          failureOrMove.fold(
              (_) => emit(state.copyWith(
                    showError: true,
                  )),
              (_) => emit(state.copyWith(
                    isMovingForward: false,
                    isMovingBackward: false,
                    isTurningLeft: true,
                    isTurningRight: false,
                    isStop: false,
                    showError: false,
                  )));
        },
        turnRight: (_) async {
          final failureOrMove = await motorCommand.turnRight();
          failureOrMove.fold(
              (_) => emit(state.copyWith(
                    showError: true,
                  )),
              (_) => emit(state.copyWith(
                    isMovingForward: false,
                    isMovingBackward: false,
                    isTurningLeft: false,
                    isTurningRight: true,
                    isStop: false,
                    showError: false,
                  )));
        },
        stop: (_) async {
          final failureOrMove = await motorCommand.stop();
          failureOrMove.fold(
              (_) => emit(state.copyWith(
                    showError: true,
                  )),
              (_) => emit(state.copyWith(
                    isMovingForward: false,
                    isMovingBackward: false,
                    isTurningLeft: false,
                    isTurningRight: false,
                    isStop: true,
                    showError: false,
                  )));
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
            rosStream: motorCommand.motorCommandRepo.ros.statusStream,
          ));
          final failureOrConnect = motorCommand.connectToRos();
          failureOrConnect.fold(
            (_) => emit(state.copyWith(
              showError: true,
            )),
            (_) => emit(state.copyWith(
              isMovingForward: false,
              isMovingBackward: false,
              isTurningLeft: false,
              isTurningRight: false,
              isStop: true,
              isConnected: false,
              showError: false,
              rosStream: Stream.empty(),
            )),
          );
        },
        disconnect: (_) {
          // Disconnect from ros topic

          final failureOrDisconnect = motorCommand.disconnectFromRos();
          failureOrDisconnect.fold(
            (_) => emit(state.copyWith(
              showError: true,
            )),
            (_) => emit(state.copyWith(
              isMovingForward: false,
              isMovingBackward: false,
              isTurningLeft: false,
              isTurningRight: false,
              isStop: true,
              isConnected: false,
              showError: false,
              rosStream: Stream.empty(),
            )),
          );
        },
      );
    });
  }
}
