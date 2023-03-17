import 'package:injectable/injectable.dart';
import 'package:ros_app/core/constants.dart';
import 'package:ros_app/core/topics.dart';
import 'package:ros_app/core/user_exceptions.dart';
import 'package:roslibdart/roslibdart.dart';

@injectable
class MotorNodePub {
  final forward = {'command': 'Forward'};
  final backward = {'command': 'Back'};
  final left = {'command': 'Turn_left'};
  final right = {'command': 'Turn_right'};
  final stop = {'command': 'Stop'};
  final Ros ros = Ros(url: Constants.raspiUrl);

  late final Topic topic = Topic(
      ros: ros,
      name: MotorTopic.topicName,
      type: MotorTopic.msgType,
      reconnectOnClose: true,
      queueLength: 10,
      queueSize: 10);

  void connectToRos() {
    try {
      ros.connect();
    } catch (_) {
      throw RosConnectionException('Error: Cannot connect to Ros');
    }
  }

  void disconnectFromRos() {
    try {
      ros.close();
    } catch (_) {
      throw RosConnectionException('Disconnection Error');
    }
  }

  Future<void> forwardCommand() async {
    try {
      print('Publishing forward command');
      await topic.publish(forward);
    } catch (_) {
      throw RosConnectionException(
          'Error: Cannot pubblish command...Probably Ros connection error');
    }
  }

  Future<void> backwardCommand() async {
    try {
      print('Publishing backward command');
      await topic.publish(backward);
    } catch (_) {
      throw RosConnectionException(
          'Error: Cannot pubblish command...Probably Ros connection error');
    }
  }

  Future<void> leftCommand() async {
    try {
      print('Publishing left command');
      await topic.publish(left);
    } catch (_) {
      throw RosConnectionException(
          'Error: Cannot pubblish command...Probably Ros connection error');
    }
  }

  Future<void> rightCommand() async {
    try {
      print('Publishing right command');
      await topic.publish(right);
    } catch (_) {
      throw RosConnectionException(
          'Error: Cannot pubblish command...Probably Ros connection error');
    }
  }

  Future<void> stopCommand() async {
    try {
      print('Publishing stop command');
      await topic.publish(stop);
    } catch (_) {
      throw RosConnectionException(
          'Error: Cannot pubblish command...Probably Ros connection error');
    }
  }
}
