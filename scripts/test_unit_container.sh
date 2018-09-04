#!/bin/bash
export tags=`git describe --abbrev=0 --tags`
docker inspect 10.0.0.111:5000/web01:$tags
docker inspect 10.0.0.111:5000/web01:latest