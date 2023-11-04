export PYTHONPATH=$PWD:$PYTHONPATH
set -aux

GPU_NUMS=4
PORT=12377
MODEL_ARCH="poolformer_m36"

export CUDA_VISIBLE_DEVICES=0,4,5,6
python3 -m oneflow.distributed.launch \
        --nproc_per_node $GPU_NUMS \
        --master_addr 127.0.0.1 \
        --master_port $PORT \
        main.py \
        --cfg configs/poolformer_default_settings.yaml \
        --model_arch $MODEL_ARCH
