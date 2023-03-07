import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ros_app/injection.dart';
import 'package:ros_app/motorCommand/application/bloc/motor_control_bloc.dart';
import 'package:ros_app/presentation/screens/camera_page.dart';
import 'package:ros_app/presentation/screens/homepage.dart';
import 'package:ros_app/presentation/screens/motor_controller_page.dart';

void main() {
  configureDependencies();
  runApp(RosApp());
}

class RosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MotorControlBloc>(),
      child: MaterialApp(
        routes: {
          '/': (context) => HomePage(),
          '/controller': (context) => MotorControlPage(),
          '/camera': (context) => CameraPage(),
        },
      ),
    );
  }
}
