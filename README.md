# ros_app

A **Flutter mobile application** for controlling a **ROS 2-based 4-wheel Ackermann steering robotic car** via **rosbridge**.  

![ROS Flutter Car Control](images/ros_flutter_car.png)  

The app acts as a ROS node, publishing commands to the robot over Wi-Fi.

---

## 🧭 Table of Contents

1. [Getting Started](#1️⃣-getting-started)  
2. [Connection & Usage](#2️⃣-connection--usage)  
3. [Message & Topics](#3️⃣-message--topics)  
4. [TODO Features](#4️⃣-todo-features)  

---

## 1️⃣ Getting Started

Before launching the Flutter app, ensure your ROS 2 environment on the Raspberry Pi is ready:

1️⃣ Start the **rosbridge server**:

```bash
ros2 launch rosbridge_server rosbridge_websocket_launch.xml
```

2️⃣ Launch the ROS 2 motor node that listens for commands:

```bash
ros2 run drivers_pkg motor_node
```

3️⃣ Launch the Flutter application and connect it to the Raspberry Pi IP address.

## 2️⃣ Connection & Usage
Ensure your mobile device is connected to the same Wi-Fi network as the Raspberry Pi.

Use the on-screen controls to send motor commands.

Example: controlling the throttle and steering through the app interface.

---
## 3️⃣ Message & Topics
Topic Published: /motorCommand

Message Type: custom_motor_msgs/msg/MotorCommand

Message Content: a string representing motor commands (e.g., speed, direction)

The app publishes messages directly to the motor controller node running on the Raspberry Pi.
---
## 4️⃣ TODO Features
- [x] Motor command
- [x] Servo Command
- [x] Camera visualization
- [ ] SLAM
- [ ] Autonomous Navigation
