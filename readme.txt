﻿步骤一：将ORB-SLAM2文件夹复制到catkin 的src文件夹下
解压Vocabulary文件夹下的ORBvoc.txt

步骤二：在catkin目录下修改代码
修改ORB-SLAM2\Examples\ROS\ORB_SLAM2\src\ros_rgbd.cc文件中的订阅话题
    message_filters::Subscriber<sensor_msgs::Image> rgb_sub(nh, "/camera/rgb/image_raw", 1);
    message_filters::Subscriber<sensor_msgs::Image> depth_sub(nh, "/camera/depth/image_raw", 1);
上面的/camera/rgb/image_raw修改成摄像机对应的色彩图片话题
/camera/depth/image_raw修改成深度图片
因为不同设备话题名称不一样

步骤三：
编译和orablsam2一样 参考
https://blog.csdn.net/learning_tortosie/article/details/79881165

步骤四：
运行rgbd摄像机节点发布相机话题

步骤五：
rosrun ORB_SLAM22 RGBD  /home/liang/catkin_ws/src/ORB-SLAM2_RGBD_DENSE_LOOP/Vocabulary/ORBvoc.txt  /home/liang/catkin_ws/src/ORB-SLAM2_RGBD_DENSE_LOOP/Examples/ROS/ORB_SLAM22/Asus.yaml

bin/rgbd_tum   /root/WorkSpace/program/ws_topo/src/ORB-SLAM2_RGBD_DENSE_LOOP/Vocabulary/ORBvoc.txt  /root/WorkSpace/program/ws_topo/src/ORB-SLAM2_RGBD_DENSE_LOOP/Examples/RGB-D/TUM2.yaml   ../../../../data/rgbd_dataset_freiburg2_large_with_loop  ../../../../data/rgbd_dataset_freiburg2_large_with_loop/associate.txt 

rosrun ORB_SLAM22 RGBD /root/WorkSpace/program/ws_topo/src/ORB-SLAM2_RGBD_DENSE_LOOP/Vocabulary/ORBvoc.txt  /root/WorkSpace/program/ws_topo/src/ORB-SLAM2_RGBD_DENSE_LOOP/Examples/RGB-D/TUM3.yaml 

rgbd_dataset_freiburg3_teddy
