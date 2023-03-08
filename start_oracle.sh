#!/bin/sh

# stop and remove old container
docker stop dbs2-workspace
docker rm dbs2-workspace
 
# create container
docker run -itd --name dbs2-workspace --network=dbs2 --shm-size=1024m -p 6901:6901 -v ~/Docker/dbs2/mki:/home/mki -e VNC_PW=dbs2 peterhertkorn/dbs2:develop

