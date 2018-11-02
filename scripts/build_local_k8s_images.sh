#!/bin/bash

images=(kube-apiserver:v1.12.0 kube-controller-manager:v1.12.0 kube-scheduler:v1.12.0 kube-proxy:v1.12.0 pause:3.1 etcd:3.2.24 coredns:1.2.2)
for image in ${images[@]} ; do
  docker pull index.docker.io/15810855834/$image
  docker tag index.docker.io/15810855834/$image k8s.gcr.io/$image
  docker rmi index.docker.io/15810855834/$image

done
