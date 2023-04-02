import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:image/image.dart';
import 'package:ros_app/core/failures.dart';

Either<ImageFailure, Uint8List> validateRosImage(Uint8List data) {
// Only jpeg and png format is accepted
  final jpg = JpegDecoder();
  final png = PngDecoder();
  if (jpg.isValidFile(data) || png.isValidFile(data)) {
    return Right(data);
  } else {
    return Left(ImageFailure.rosInvalidImage());
  }
}
