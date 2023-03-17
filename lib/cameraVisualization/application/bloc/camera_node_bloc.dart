import 'dart:developer';
import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ros_app/cameraVisualization/domain/usecases/camera_visualization.dart';
import 'dart:ui';
import 'dart:async';

part 'camera_node_event.dart';
part 'camera_node_state.dart';
part 'camera_node_bloc.freezed.dart';

@injectable
class CameraNodeBloc extends Bloc<CameraNodeEvent, CameraNodeState> {
  final CameraVisualization cameraVisualization;
  CameraNodeBloc({
    required this.cameraVisualization,
  }) : super(CameraNodeState.initial()) {
    on<CameraNodeEvent>((event, emit) async {
      await event.map(
        connectToRos: (_) async {
          final failureOrSuccess = await cameraVisualization.connectToRos();
          failureOrSuccess.fold(
            (_) => emit(state.copyWith(isError: true)),
            ((_) async {
              log('connect');
              try {
                log('before');
                await cameraVisualization.subscribeTo((message) async {
                  log('callback');
                  log(message['format']);
                  // final Uint8List imageData = message['data'];
                  // final Completer<Image> completer = Completer();
                  // final Codec codec = await instantiateImageCodec(imageData);
                  // final FrameInfo frameInfo = await codec.getNextFrame();
                  // Image imageFromTopic = frameInfo.image;
                  // completer.complete(imageFromTopic);
                  // add(CameraNodeEvent.retrieveImageFromRos(
                  //     newImage: imageFromTopic));
                });
              } catch (e) {
                print(e);
              }
            }),
          );
        },
        disconnectFromRos: (_) async {
          final failureOrSuccess =
              await cameraVisualization.disconnectFromRos();
          failureOrSuccess.fold(
            (_) => emit(state.copyWith(isError: true)),
            (_) => emit(state.copyWith(
              isConnected: false,
            )),
          );
        },
        retrieveImageFromRos: (e) async {
          log('retrieve image');
          emit(state.copyWith(
            isConnected: true,
            isError: false,
            imageState: e.newImage,
          ));
        },
      );
    });
  }
}
