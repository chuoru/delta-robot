#!/bin/sh
mkdir -p ./tmp

cp -r ./delta_description/ ./tmp/delta_description
cp -r ./delta_gazebo/ ./tmp/delta_gazebo

docker build -t "delta_gazebo:latest" .
