# Installation

## Docker
Create docker container
```
docker run \
    -it \
    -e DISPLAY=$DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --name turtlebot-slam \
    -p 11311:11311 \
    -v /store/B\ Tech/Research\ Project/Turtlebot-Slam/turtlebot-node/:/root/turtlebot-node \
    --device=/dev/ttyUSB1 \
    osrf/ros:melodic-desktop-full
```

# Setup
Install nano
```
apt update
apt install nano
```

Update ~/.bashrc with following lines (`nano ~/.bashrc`)
```
source /opt/ros/melodic/setup.bash
```

Source it
```
source ~/.bashrc
```

Create catkin workspace
```
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws/
catkin_make
```

Update ~/.bashrc with following lines
```
source ~/catkin_ws/devel/setup.bash
alias cw='cd ~/catkin_ws'
alias cs='cd ~/catkin_ws/src'
alias cm='cd ~/catkin_ws && catkin_make'
```

Source it again
```
source ~/.bashrc
```
