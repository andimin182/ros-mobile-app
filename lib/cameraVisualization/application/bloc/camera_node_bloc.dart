import 'dart:convert';
import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ros_app/cameraVisualization/domain/usecases/camera_visualization.dart';
import 'package:ros_app/core/validator.dart';

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
              await cameraVisualization.subscribeTo((message) async {
                if (message.containsKey('data') && message['data'] != null) {
                  final String stringImage = message['data'];
                  // Decode the base64 encoded image data
                  final Uint8List bytesData = base64.decode(stringImage);
                  // First validate the correct image format
                  final failureOrData = validateRosImage(bytesData);

                  failureOrData.fold(
                      (failure) => emit(state.copyWith(isError: true)), (data) {
                    // Construct the image
                    final Image receivedImage = Image.memory(
                      data,
                      width: 400,
                      height: 560,
                    );

                    add(CameraNodeEvent.retrieveImageFromRos(
                        receivedImage: receivedImage));
                  });
                } else {
                  emit(state.copyWith(isError: true));
                }
              });
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
          emit(state.copyWith(
            isConnected: true,
            isError: false,
            imageState: e.receivedImage,
          ));
        },
      );
    });
  }
}
