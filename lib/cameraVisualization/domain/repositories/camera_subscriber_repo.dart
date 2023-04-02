import 'dart:async';
import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:ros_app/core/constants.dart';
import 'package:ros_app/core/topics.dart';
import 'package:ros_app/core/user_exceptions.dart';
import 'package:roslibdart/core/core.dart';

typedef Callback = Future<void> Function(Map<String, dynamic> args);

@injectable
class CameraNodeSub {
  final Ros ros = Ros(url: Constants.dockerUrl);

  late final Topic subscriber = Topic(
      ros: ros,
      name: CameraTopic.topicName,
      type: CameraTopic.msgType,
      reconnectOnClose: true,
      queueLength: 10,
      queueSize: 10);

  void connectToRos() {
    try {
      ros.connect();
    } on WebSocketException catch (_) {
      throw RosConnectionException(
          'Error: Cannot connect to Ros...please run the rosbridge');
    } on SocketException catch (_) {
      throw RosConnectionException(
          'Error: Cannot connect to Ros...please run the rosbridge');
    } catch (_) {
      throw RosConnectionException('Error: Cannot connect to Ros');
    }
  }

  void disconnectFromRos() {
    try {
      subscriber.unsubscribe();
      ros.close();
    } on WebSocketException catch (_) {
      throw RosConnectionException('Disconnection Error');
    } on SocketException catch (_) {
      throw RosConnectionException('Disconnection Error');
    } catch (_) {
      throw RosConnectionException('Disconnection Error');
    }
  }

  Future<void> subscribeToTopic(Callback callback) async {
    await subscriber.subscribe(callback);
  }
}
