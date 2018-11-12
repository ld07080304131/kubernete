#!/bin/bash

images=(defaultbackend:1.4)
for image in ${images[@]} ; do
  docker pull index.docker.io/15810855834/$image
  docker tag index.docker.io/15810855834/$image gcr.io/$image
  docker rmi index.docker.io/15810855834/$image

done
