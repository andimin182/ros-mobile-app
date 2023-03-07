import 'package:roslibdart/roslibdart.dart';

import 'core/constants.dart';
import 'core/topics.dart';

class MotorCommand {
  final forward = {'command': 'Forward'};
  final backward = {'command': 'Back'};
  final left = {'command': 'Turn_left'};
  final right = {'command': 'Turn_right'};
  final stop = {'command': 'Stop'};
  Ros ros = Ros(url: Constants.raspiUrl);
  late final Topic topic = Topic(
      ros: ros,
      name: MotorTopic.topicName,
      type: MotorTopic.msgType,
      reconnectOnClose: true,
      queueLength: 10,
      queueSize: 10);

  void connectToRos() {
    ros.connect();
  }

  void disconnectFromRos() {
    ros.close();
  }

  void forwardCommand() async {
    print('Publishing forward command');
    await topic.publish(forward);
  }

  void backwardCommand() async {
    print('Publishing backward command');
    await topic.publish(backward);
  }

  void leftCommand() async {
    print('Publishing left command');
    await topic.publish(left);
  }

  void rightCommand() async {
    print('Publishing right command');
    await topic.publish(right);
  }

  void stopCommand() async {
    print('Publishing stop command');
    await topic.publish(stop);
  }
}
