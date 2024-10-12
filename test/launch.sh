#!/bin/bash

docker run -it --rm --runtime=nvidia --privileged \
  --network host --gpus=all \
  --ipc=host \
  -v /data/dataset/coco:/dataset/coco \
  -w /workspace \
  oneflow_comodels_demo:0.1 \
  bash

