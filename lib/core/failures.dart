import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure() = _Failure;
  const factory Failure.rosConnectionFailure() = RosConnectionFailure;
  const factory Failure.motorCommandFailure() = MotorCommandFailure;
}
