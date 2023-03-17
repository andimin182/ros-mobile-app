import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:ros_app/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:ros_app/core/user_exceptions.dart';
import 'package:ros_app/motorCommand/domain/repositories/motor_node_pub_repo.dart';

@injectable
class MotorCommand {
  final MotorNodePub motorNodePub;

  MotorCommand({
    required this.motorNodePub,
  });

  Future<Either<Failure, Unit>> moveForward() async {
    try {
      await motorNodePub.forwardCommand();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.motorCommandFailure());
    }
  }

  Future<Either<Failure, Unit>> moveBackward() async {
    try {
      await motorNodePub.backwardCommand();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.motorCommandFailure());
    }
  }

  Future<Either<Failure, Unit>> turnLeft() async {
    try {
      await motorNodePub.leftCommand();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.motorCommandFailure());
    }
  }

  Future<Either<Failure, Unit>> turnRight() async {
    try {
      await motorNodePub.rightCommand();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.motorCommandFailure());
    }
  }

  Future<Either<Failure, Unit>> stop() async {
    try {
      await motorNodePub.stopCommand();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.motorCommandFailure());
    }
  }

  Either<Failure, Unit> connectToRos() {
    try {
      motorNodePub.connectToRos();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.rosConnectionFailure());
    }
  }

  Either<Failure, Unit> disconnectFromRos() {
    try {
      motorNodePub.disconnectFromRos();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.rosConnectionFailure());
    }
  }
}
