import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';

class ImagePainter extends CustomPainter {
  ui.Image image;
  ImagePainter({
    required this.image,
  });

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawImage(image, Offset.zero, Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
