import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ros_app/cameraVisualization/domain/repositories/camera_subscriber_repo.dart';
import 'package:ros_app/core/failures.dart';
import 'package:ros_app/core/user_exceptions.dart';

@injectable
class CameraVisualization {
  final CameraNodeSub cameraNodeSub;

  CameraVisualization(this.cameraNodeSub);

  Future<void> subscribeTo(
      Future<void> Function(Map<String, dynamic>) callback) async {
    await cameraNodeSub.subscribeToTopic(callback);
  }

  Future<Either<Failure, Unit>> connectToRos() async {
    try {
      cameraNodeSub.connectToRos();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.toString());
      return Left(Failure.rosConnectionFailure());
    }
  }

  Future<Either<Failure, Unit>> disconnectFromRos() async {
    try {
      cameraNodeSub.disconnectFromRos();
      return Right(unit);
    } on RosConnectionException catch (e) {
      log(e.toString());
      return Left(Failure.rosConnectionFailure());
    }
  }
}
