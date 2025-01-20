#!/bin/bash

source devcontainer.common
echo "cont_from: $cont_from"
echo "cont_tag: $cont_tag"

docker build --load --build-arg cont_from=$cont_from -t $cont_tag -f src/Containerfile src

# Using "--progress=plain" instead could be handy for debugging, since the buildkit output can be sparse
#docker buildx build --progress=plain --load --build-arg cont_from=$cont_from -t $cont_tag -f src/Containerfile src


