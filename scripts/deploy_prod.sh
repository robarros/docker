#!/bin/bash
export tags=`git describe --abbrev=0 --tags`
docker rm -f portal || echo "removido container portal"
docker container run -d -p 80:80 --name portal 10.0.0.111:5000/web01:$tags