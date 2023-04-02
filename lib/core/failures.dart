import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure() = _Failure;
  const factory Failure.rosConnectionFailure() = RosConnectionFailure;
  const factory Failure.motorCommandFailure() = MotorCommandFailure;
  const factory Failure.cameraSubscriberFailure() = CameraSubscriberFailure;
}

@freezed
class ImageFailure with _$ImageFailure {
  const factory ImageFailure() = _ImageFailure;
  const factory ImageFailure.rosInvalidImage() = RosInvalidImage;
}
