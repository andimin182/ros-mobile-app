import 'package:roslib/roslib.dart';

class Controller {
  final forward = {'data': 'forward'};
  final backward = {'data': 'backward'};
  final left = {'data': 'left'};
  final right = {'data': 'right'};
  final stop = {'data': 'stop'};
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
