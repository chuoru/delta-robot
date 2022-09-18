
# Delta Robot
A gazebo simulation for delta robot

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


