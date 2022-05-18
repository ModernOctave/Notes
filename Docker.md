# Basic

# GUI
[Stack Exchange](https://unix.stackexchange.com/questions/330366/how-can-i-run-a-graphical-application-in-a-container-under-wayland)

[ROS Wiki](http://wiki.ros.org/docker/Tutorials/GUI)

## X11 Apps
Use the following flags
```
-e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix:/tmp/.X11-unix
```

## Wayland Apps
Allow access using xhost
```
xhost +local:
```

Use the following flags
```
-e XDG_RUNTIME_DIR=/tmp -e WAYLAND_DISPLAY=$WAYLAND_DISPLAY -e QT_QPA_PLATFORM=wayland -v $XDG_RUNTIME_DIR/$WAYLAND_DISPLAY:/tmp/$WAYLAND_DISPLAY
```

Note: Disable access when done using `xhost -local:`