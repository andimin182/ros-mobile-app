part of 'camera_node_bloc.dart';

@freezed
class CameraNodeEvent with _$CameraNodeEvent {
  const factory CameraNodeEvent.connectToRos() = ConnectToRos;
  const factory CameraNodeEvent.disconnectFromRos() = DisconnectFromRos;
  const factory CameraNodeEvent.retrieveImageFromRos(
      {required Image receivedImage}) = RetrieveImageFromRos;
}
