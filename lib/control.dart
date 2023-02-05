import 'package:roslib/roslib.dart';

class Controller {
  final forward = {'command': 'Forward'};
  final backward = {'command': 'Back'};
  final left = {'command': 'Turn_left'};
  final right = {'comman': 'Turn_right'};
  final stop = {'command': 'Stop'};
  Topic topic;

  Controller({this.topic});

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
