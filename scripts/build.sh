#!/bin/bash
export tags=`git describe --abbrev=0 --tags`
docker build -t 10.0.0.111:5000/web01:$tags -t 10.0.0.111:5000/web01:latest --no-cache .
docker push 10.0.0.111:5000/web01:latest
docker push 10.0.0.111:5000/web01:$tags
