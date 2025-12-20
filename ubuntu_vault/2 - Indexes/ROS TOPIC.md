Tags: [[mir100]] [[ROS]]
## Motion / Control

| Topic      | Type                  | What it is                                                       | Quick use                                                                                                              |
| ---------- | --------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `/cmd_vel` | `geometry_msgs/Twist` | Velocity command to the base. Linear x (m/s), angular z (rad/s). | Move forward 2s: `rostopic pub -r 10 /cmd_vel geometry_msgs/Twist '{linear:{x:0.2},angular:{z:0.0}}'` (Ctrl-C to stop) |

## Laser scanners

| Topic                              | Type                    | What it is                                                                       | Quick use                       |
| ---------------------------------- | ----------------------- | -------------------------------------------------------------------------------- | ------------------------------- |
| `/f_scan`, `/b_scan`               | `sensor_msgs/LaserScan` | Front/back LiDAR scans.                                                          | Inspect: `rostopic echo /f_scan |
| `/f_scan_rep117`, `/b_scan_rep117` | `sensor_msgs/LaserScan` | Downstream/filtered or remapped versions (frame/ID “rep117”). Use same as above. | Same as `/f_scan`/`/b_scan`.    |

## Odometry & Pose

| Topic                      | Type                                      | What it is                                                          | Quick use                                                                                                                                                                                                                                                                                                     |
| -------------------------- | ----------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `/odom`                    | `nav_msgs/Odometry`                       | Base odom (usually wheel + kinematics).                             | View pose: `rostopic echo /odom                                                                                                                                                                                                                                                                               |
| `/odometry/filtered`       | `nav_msgs/Odometry`                       | EKF-fused odom (IMU + wheel, etc.). Prefer for navigation/analysis. | Rate: `rostopic hz /odometry/filtered`                                                                                                                                                                                                                                                                        |
| `/base_pose_ground_truth`  | `nav_msgs/Odometry`                       | Gazebo truth pose (perfect, for evaluation).                        | Compare to EKF: `rosrun rqt_plot rqt_plot /odometry/filtered/pose/pose/position/x:/base_pose_ground_truth/pose/pose/position/x`                                                                                                                                                                               |
| `/set_pose` _(subscribed)_ | `geometry_msgs/PoseWithCovarianceStamped` | Reset/seed robot pose (like AMCL’s `/initialpose`).                 | Set pose (x=0,y=0,θ=0):  <br>`rostopic pub -1 /set_pose geometry_msgs/PoseWithCovarianceStamped "{header:{frame_id: 'map'}, pose:{pose:{position:{x:0,y:0,z:0}, orientation:{z:0.0,w:1.0}}, covariance:[0.25,0,0,0,0,0, 0,0.25,0,0,0,0, 0,0,0.01,0,0,0, 0,0,0,0.01,0,0, 0,0,0,0,0.01,0, 0,0,0,0,0,0.0684]}}"` |

## IMU

| Topic                                          | Type                | What it is                                                | Quick use                                                              |
| ---------------------------------------------- | ------------------- | --------------------------------------------------------- | ---------------------------------------------------------------------- |
| `/imu_data`                                    | `sensor_msgs/Imu`   | Orientation (quaternion), angular velocity, linear accel. | Echo: `rostopic echo /imu_data                                         |
| `/imu_data/bias`                               | `sensor_msgs/Imu`   | Bias-compensated stream (or bias estimate feed).          | Same introspection as above.                                           |
| `/imu_data/*/parameter_{descriptions,updates}` | dynamic reconfigure | Knobs for IMU accel/rate/yaw processing.                  | GUI: `rosrun rqt_reconfigure rqt_reconfigure` and select the IMU node. |

## TF

| Topic        | Type                 | What it is                                                 | Quick use                                                         |
| ------------ | -------------------- | ---------------------------------------------------------- | ----------------------------------------------------------------- |
| `/tf`        | `tf/tfMessage`       | Dynamic transforms (e.g., `odom→base_link`, laser frames). | Inspect a link: `rosrun tf tf_echo odom base_link`                |
| `/tf_static` | `tf2_msgs/TFMessage` | Static transforms (published once per start).              | View tree: `rosrun tf2_tools view_frames.py && evince frames.pdf` |

## Joint states

| Topic                                | Type                     | What it is                                            | Quick use                    |
| ------------------------------------ | ------------------------ | ----------------------------------------------------- | ---------------------------- |
| `/joint_states`, `/mir/joint_states` | `sensor_msgs/JointState` | Joint names, positions, velocities (wheels, sensors). | `rostopic echo /joint_states |

## Gazebo / Simulation plumbing

| Topic                                                              | Type                               | What it is                                    | Quick use                                                                                                                                                                                                                     |
| ------------------------------------------------------------------ | ---------------------------------- | --------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `/clock`                                                           | `rosgraph_msgs/Clock`              | Sim time tick. Requires `use_sim_time:=true`. | Check: `rosparam get /use_sim_time` (=true)                                                                                                                                                                                   |
| `/gazebo/model_states`                                             | `gazebo_msgs/ModelStates`          | Names + poses of all models.                  | `rostopic echo /gazebo/model_states                                                                                                                                                                                           |
| `/gazebo/link_states`                                              | `gazebo_msgs/LinkStates`           | Poses of links.                               | Same as above.                                                                                                                                                                                                                |
| `/gazebo/performance_metrics`                                      | `gazebo_msgs/PerformanceMetrics`   | Sim load/real-time factor, etc.               | `rostopic echo /gazebo/performance_metrics                                                                                                                                                                                    |
| `/gazebo/parameter_{descriptions,updates}`                         | dynamic reconfigure                | Gazebo run-time params.                       | `rqt_reconfigure`                                                                                                                                                                                                             |
| `/gazebo/set_model_state`, `/gazebo/set_link_state` _(subscribed)_ | `gazebo_msgs/ModelState/LinkState` | Teleport/pose set via topic (Gazebo plugin).  | Teleport robot: `rostopic pub -1 /gazebo/set_model_state gazebo_msgs/ModelState "{model_name: 'mir', pose:{position:{x:1.0,y:0.0,z:0.0}, orientation:{z:0.0,w:1.0}}}"` *(model name may differ; check `/gazebo/model_states`) |

## Diagnostics & Logging

| Topic                    | Type                              | What it is                         | Quick use                                                 |
| ------------------------ | --------------------------------- | ---------------------------------- | --------------------------------------------------------- |
| `/diagnostics`           | `diagnostic_msgs/DiagnosticArray` | Health/status of nodes/sensors.    | GUI monitor: `rosrun rqt_robot_monitor rqt_robot_monitor` |
| `/rosout`, `/rosout_agg` | `rosgraph_msgs/Log`               | Node logs (per node / aggregated). | Console: `rosrun rqt_console rqt_console`                 |

## Controllers

| Topic                                                      | Type                | What it is                                  | Quick use                                                              |
| ---------------------------------------------------------- | ------------------- | ------------------------------------------- | ---------------------------------------------------------------------- |
| `/mobile_base_controller/parameter_{descriptions,updates}` | dynamic reconfigure | Base controller tuning (limits, PID, etc.). | `rosrun rqt_reconfigure rqt_reconfigure` and pick the controller node. |

