#! /bin/bash
docker run -v "${PWD}/target:/output" -v "${PWD}/config:/config"  schemaspy/schemaspy:latest -configFile /config/schemaspy.properties  -noimplied -nopages -l
docker build . -t schemaspy
docker stop schemaspy
docker container rm schemaspy
docker run -dp 3001:80 --name="schemaspy" schemaspy
firefox http://localhost:3001
