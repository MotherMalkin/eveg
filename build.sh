#!/bin/bash
docker build -t informatics .
docker rm -f $(docker ps -a -q)
docker run -d -p 80:80 informatics
