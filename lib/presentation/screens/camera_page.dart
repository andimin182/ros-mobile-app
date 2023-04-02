import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:ros_app/cameraVisualization/application/bloc/camera_node_bloc.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          flexibleSpace: Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.indigoAccent]),
          )),
          title: Center(child: Text('Camera View')),
        ),
        body: BlocBuilder<CameraNodeBloc, CameraNodeState>(
          builder: (context, state) {
            return Column(
              children: [
                Container(
                  height: 550,
                  child: state.isConnected
                      ? state.imageState
                      : Center(child: Text('Connect to Ros...')),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: SizedBox(
                    width: 150,
                    child: LiteRollingSwitch(
                      onDoubleTap: () {},
                      onTap: () {},
                      onSwipe: () {},
                      value: false,
                      textOn: 'Connected',
                      textOff: 'Disconnected',
                      colorOn: Colors.green,
                      colorOff: Colors.red,
                      iconOn: Icons.lightbulb_outline,
                      iconOff: Icons.power_settings_new,
                      onChanged: (bool state) {
                        if (state == true) {
                          BlocProvider.of<CameraNodeBloc>(context)
                              .add(CameraNodeEvent.connectToRos());
                        } else {
                          BlocProvider.of<CameraNodeBloc>(context)
                              .add(CameraNodeEvent.disconnectFromRos());
                        }
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }
}
