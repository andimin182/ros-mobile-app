part of 'camera_node_bloc.dart';

@freezed
class CameraNodeState with _$CameraNodeState {
  const factory CameraNodeState({
    required bool isConnected,
    required bool isError,
    required Image? imageState,
  }) = _CameraNodeState;

  factory CameraNodeState.initial() {
    return CameraNodeState(
      isConnected: false,
      isError: false,
      imageState: null,
    );
  }
}
