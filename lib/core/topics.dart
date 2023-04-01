class MotorTopic {
  static const String topicName = "/motorCommand";
  static const String msgType = "custom_interface_msgs/msg/MotorCommand";
}

class CameraTopic {
  static const String topicName = "/imageColorDetection";
  static const String msgType = "sensor_msgs/msg/CompressedImage";
}

class MockCameraTopic {
  static const String topicName = "/mock_imageColorDetection";
  static const String msgType = "sensor_msgs/msg/CompressedImage";
}

class RaspiCameraTopic {
  static const String topicName = "/mock_imageColorDetection";
  static const String msgType = "sensor_msgs/msg/CompressedImage";
}
