echo "Building ROS nodes"

cd Examples/ROS/ORB_SLAM22
mkdir build
cd build
cmake .. -DROS_BUILD_TYPE=Release
make -j
