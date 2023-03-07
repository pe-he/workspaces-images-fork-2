#!/bin/sh

# stop and remove old container
docker stop dbs2-test
docker rm dbs2-test
 
# create container
docker run -it --name dbs2-test --network=dbs2 --shm-size=1024m -p 6901:6901 -v /Users/ph/Documents/Docker/dbs2/mki:/home/mki -e VNC_PW=dbs2 peterhertkorn/dbs2:develop

