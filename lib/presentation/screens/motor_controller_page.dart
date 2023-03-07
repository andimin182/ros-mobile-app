import 'package:flutter/material.dart';
import 'package:ros_app/core/constants.dart';
import 'package:roslibdart/roslibdart.dart';
import 'package:ros_app/control.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class MotorControlPage extends StatefulWidget {
  @override
  _MotorControlPageState createState() => _MotorControlPageState();
}

class _MotorControlPageState extends State<MotorControlPage> {
  Ros ros = Ros(url: Constants.raspiUrl);
  late Topic command;
  late MotorCommand controlAction;
  bool upPressed = false;
  bool downPressed = false;
  bool leftPressed = false;
  bool rightPressed = false;

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
      body: Container(
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
              children: <Widget>[
                Container(
                  height: 80.0,
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: upPressed
                            ? MaterialStateProperty.all(Colors.purple[800])
                            : MaterialStateProperty.all(Colors.indigoAccent)),
                    child: Icon(Icons.arrow_upward_sharp, size: 70),
                    onPressed: () {
                      setState(() {
                        if (upPressed == false) {
                          upPressed = true;
                          controlAction.forwardCommand();
                        } else {
                          upPressed = false;
                          controlAction.stopCommand();
                        }
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 80.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: leftPressed
                                  ? MaterialStateProperty.all(
                                      Colors.purple[800])
                                  : MaterialStateProperty.all(
                                      Colors.indigoAccent)),
                          child: Icon(Icons.arrow_back_sharp, size: 70),
                          onPressed: () {
                            setState(() {
                              if (leftPressed == false) {
                                leftPressed = true;
                                controlAction.leftCommand();
                              } else {
                                leftPressed = false;
                                controlAction.stopCommand();
                              }
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 120),
                      Container(
                        height: 100,
                        width: 80.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: rightPressed
                                  ? MaterialStateProperty.all(
                                      Colors.purple[800])
                                  : MaterialStateProperty.all(
                                      Colors.indigoAccent)),
                          child: Icon(Icons.arrow_forward_sharp, size: 70),
                          onPressed: () {
                            setState(() {
                              if (rightPressed == false) {
                                rightPressed = true;
                                controlAction.rightCommand();
                              } else {
                                rightPressed = false;
                                controlAction.stopCommand();
                              }
                            });
                          },
                        ),
                      ),
                    ]),
                SizedBox(height: 20),
                Container(
                  height: 80.0,
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: downPressed
                            ? MaterialStateProperty.all(Colors.purple[800])
                            : MaterialStateProperty.all(Colors.indigoAccent)),
                    child: Icon(Icons.arrow_downward_sharp, size: 70),
                    onPressed: () {
                      setState(() {
                        if (downPressed == false) {
                          downPressed = true;
                          controlAction.backwardCommand();
                        } else {
                          downPressed = false;
                          controlAction.stopCommand();
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: StreamBuilder<Object>(
                  stream: ros.statusStream,
                  builder: (context, snapshot) {
                    return Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            child: LiteRollingSwitch(
                              value: false,
                              textOn: 'Connected',
                              textOff: 'Disconnected',
                              colorOn: Colors.green[300],
                              colorOff: Colors.red[300],
                              iconOn: Icons.lightbulb_outline,
                              iconOff: Icons.power_settings_new,
                              onChanged: (bool state) {
                                if (state == true)
                                  ros.connect();
                                else
                                  ros.close();
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
      ),
    );
  }
}
