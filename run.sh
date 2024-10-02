#!/bin/bash

docker stop gpsd
docker container rm gpsd
set -e
docker build -t bjf-gps .

docker run --privileged --net=host -d --name gpsd \
	-p 123:123/udp                                          \
	-it							\
        --cap-add SYS_NICE                                      \
        --cap-add SYS_TIME                                      \
        --cap-add SYS_RESOURCE   				\
	--restart unless-stopped				\
	-e ENABLE_SYSCLK=true					\
	bjf-gps

#docker exec -it gpsd chronyc
#docker exec -it gpsd cgps

# cgps for client
# chronyc for client (tracking sources)



