class RosConnectionException implements Exception {
  final String message;

  RosConnectionException(this.message);
}

class RosCameraTopicException implements Exception {
  final String message;

  RosCameraTopicException(this.message);
}
