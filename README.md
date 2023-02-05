# ros_app

A Flutter mobile application for controlling a Ros based robotic car 4W

## Getting Started

First, ensure that the rosbridge is running on the Raspi through:
- $ ros2 launch rosbridge_server rosbridge_websocket_launch.xml

Secondly, launch the Ros2 node on the Raspi that checks for motor commands:
- $ ros2 run drivers_pkg motor_node

Finally, you can launch the flutter application and connect to the Raspi ip.

A few important considerations:
- The app acts as a node which publishes commands
- The app publishes on the topic "/motorCommand'
- The msg type is of "custom_motor_msgs/msg/MotorCommand". It's basically a string


## TODO features
- [x] Motor command
- [] Servo Command
- [] Camera visualization
- [] Autonomous Navigation
