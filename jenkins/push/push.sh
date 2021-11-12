#!/bin/bash
echo "********************"
echo "** Pushing image ***"
echo "********************"
IMAGE="maven-project"
echo "** Logging in ***"
docker login -u ericyoshida -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG ericyoshida/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push ericyoshida/$IMAGE:$BUILD_TAG
