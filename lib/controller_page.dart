import 'package:flutter/material.dart';
import 'package:roslib/roslib.dart';
import 'package:ros_app/control.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class Control extends StatefulWidget {
  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
  Ros ros = Ros(url: 'ws://192.168.1.38:9090');
  Topic command;
  Controller controlAction;
  bool upPressed = false;
  bool downPressed = false;
  bool leftPressed = false;
  bool rightPressed = false;

  @override
  void initState() {
    command = Topic(
        ros: ros,
        name: '/command',
        type: "std_msgs/String",
        reconnectOnClose: true,
        queueLength: 10,
        queueSize: 10);
    controlAction = Controller(topic: command);

    super.initState();
  }

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
              colors: [Colors.purple[800], Colors.indigoAccent]),
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
                          /*ActionChip(
                            padding: EdgeInsets.symmetric(
                                horizontal: 80, vertical: 20),
                            labelStyle: TextStyle(fontSize: 20),
                            label: Text(snapshot.data == Status.CONNECTED
                                ? 'DISCONNECT'
                                : 'CONNECT'),
                            backgroundColor: snapshot.data == Status.CONNECTED
                                ? Colors.green[300]
                                : Colors.red[300],
                            onPressed: () {
                              if (snapshot.data != Status.CONNECTED)
                                ros.connect();
                              else
                                ros.close();
                            },
                          ),*/
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
