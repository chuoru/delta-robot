
# Delta Robot
A gazebo simulation for delta robot

## Build 
```
mkdir delta_ws
cd delta_ws
cd src/
git clone https://github.com/chuoru/delta-robot
cd ../
catkin_make
```
Run gazebo
```
roslaunch delta_gazebo delta_gazebo.launch
```

## Install docker 
https://docs.docker.com/engine/install/ubuntu/

## Docker image creation
In scripts folder 
```
$./create_image.sh
```

## Launch 

Acquire xauthority
```
sh ./scripts/xauth.sh
```

Config xhost. This method exposes PC to external source.
Therefore, it is need to find an alternative. 
```
xhost +
```

Launch delta gazebo
```
$ docker-compose up -d
```


