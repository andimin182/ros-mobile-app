import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ros_app/motorCommand/application/bloc/motor_control_bloc.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class MotorControlPage extends StatefulWidget {
  @override
  _MotorControlPageState createState() => _MotorControlPageState();
}

class _MotorControlPageState extends State<MotorControlPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180,
        flexibleSpace: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.indigoAccent]),
        )),
        title: Center(child: Text('Ros Controller')),
      ),
      body: BlocBuilder<MotorControlBloc, MotorControlState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.black87, Colors.black38]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(10)),
                          backgroundColor: state.isMovingForward
                              ? MaterialStateProperty.all(Colors.purple[800])
                              : MaterialStateProperty.all(Colors.indigoAccent)),
                      child: Icon(Icons.keyboard_arrow_up_outlined, size: 70),
                      onPressed: () {
                        if (state.isMovingForward == false) {
                          BlocProvider.of<MotorControlBloc>(context)
                              .add(MotorControlEvent.moveForward());
                        } else {
                          BlocProvider.of<MotorControlBloc>(context)
                              .add(MotorControlEvent.stop());
                        }
                      },
                    ),
                    SizedBox(height: 30),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(10)),
                            backgroundColor: state.isTurningLeft
                                ? MaterialStateProperty.all(Colors.purple[800])
                                : MaterialStateProperty.all(
                                    Colors.indigoAccent)),
                        child:
                            Icon(Icons.keyboard_arrow_left_outlined, size: 70),
                        onPressed: () {
                          if (state.isTurningLeft == false) {
                            BlocProvider.of<MotorControlBloc>(context)
                                .add(MotorControlEvent.turnLeft());
                          } else {
                            BlocProvider.of<MotorControlBloc>(context)
                                .add(MotorControlEvent.stop());
                          }
                        },
                      ),
                      SizedBox(width: 120),
                      ElevatedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(10)),
                            backgroundColor: state.isTurningRight
                                ? MaterialStateProperty.all(Colors.purple[800])
                                : MaterialStateProperty.all(
                                    Colors.indigoAccent)),
                        child:
                            Icon(Icons.keyboard_arrow_right_outlined, size: 70),
                        onPressed: () {
                          if (state.isTurningRight == false) {
                            BlocProvider.of<MotorControlBloc>(context)
                                .add(MotorControlEvent.turnRight());
                          } else {
                            BlocProvider.of<MotorControlBloc>(context)
                                .add(MotorControlEvent.stop());
                          }
                        },
                      ),
                    ]),
                    SizedBox(height: 30),
                    ElevatedButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(10)),
                          backgroundColor: state.isMovingBackward
                              ? MaterialStateProperty.all(Colors.purple[800])
                              : MaterialStateProperty.all(Colors.indigoAccent)),
                      child: Icon(Icons.keyboard_arrow_down_outlined, size: 70),
                      onPressed: () {
                        if (state.isMovingBackward == false) {
                          BlocProvider.of<MotorControlBloc>(context)
                              .add(MotorControlEvent.moveBackward());
                        } else {
                          BlocProvider.of<MotorControlBloc>(context)
                              .add(MotorControlEvent.stop());
                        }
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: StreamBuilder<Object>(
                      stream: state.rosStream,
                      builder: (context, snapshot) {
                        return Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
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
                                    if (state == true)
                                      BlocProvider.of<MotorControlBloc>(context)
                                          .add(MotorControlEvent.connect());
                                    else
                                      BlocProvider.of<MotorControlBloc>(context)
                                          .add(MotorControlEvent.disconnect());
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
