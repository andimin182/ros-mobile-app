import 'dart:typed_data';
import 'dart:ui' as ui;

Future<ui.Image> isImageDataValid(Uint8List imageData) async {
  ui.Codec codec = await ui.instantiateImageCodec(imageData);
  ui.FrameInfo frameInfo = await codec.getNextFrame();
  return frameInfo.image;
}
