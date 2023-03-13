import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:ros_app/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:ros_app/core/user_exceptions.dart';
import 'package:ros_app/motorCommand/domain/repositories/control_repo.dart';

@injectable
class MotorCommand {
  final MotorCommandRepo motorCommandRepo;

  MotorCommand({
    required this.motorCommandRepo,
  });

  Future<Either<Failure, Unit>> moveForward() async {
    try {
      await motorCommandRepo.forwardCommand();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.motorCommandFailure());
    }
  }

  Future<Either<Failure, Unit>> moveBackward() async {
    try {
      await motorCommandRepo.backwardCommand();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.motorCommandFailure());
    }
  }

  Future<Either<Failure, Unit>> turnLeft() async {
    try {
      await motorCommandRepo.leftCommand();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.motorCommandFailure());
    }
  }

  Future<Either<Failure, Unit>> turnRight() async {
    try {
      await motorCommandRepo.rightCommand();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.motorCommandFailure());
    }
  }

  Future<Either<Failure, Unit>> stop() async {
    try {
      await motorCommandRepo.stopCommand();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.motorCommandFailure());
    }
  }

  Either<Failure, Unit> connectToRos() {
    try {
      motorCommandRepo.connectToRos();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.rosConnectionFailure());
    }
  }

  Either<Failure, Unit> disconnectFromRos() {
    try {
      motorCommandRepo.disconnectFromRos();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.message);
      return Left(Failure.rosConnectionFailure());
    }
  }
}
