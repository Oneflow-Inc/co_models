#!/bin/bash

current_dir=$(dirname "$(realpath "$0")")
parent_dir=$(dirname "$current_dir")

docker run -it --rm --runtime=nvidia --privileged \
  --network host --gpus=all \
  --ipc=host \
  -v /data:/data \
  -v /data/dataset/coco:/dataset/mscoco_2017 \
  -v /data/dataset/coco:/dataset/coco \
  -v /data/dataset/ms1m-retinaface-t1:/train_tmp/ms1m-retinaface-t1 \
  -v $parent_dir:/workspace/CoModels \
  -v $parent_dir/cached_models:/root/.oneflow \
  -w /workspace \
  oneflow_comodels_test:0.1 \
  bash
  #docker.io/oneflowinc/onediff:cu121 \
  #comodels_test:latest \
  #registry.cn-beijing.aliyuncs.com/oneflow/oneflow:nightly-cuda11.8 \
  #triton_trt_llm:latest \
  #docker.io/tensorrt_llm/release:latest \

