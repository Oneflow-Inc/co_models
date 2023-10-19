export PYTHONPATH=$PWD:$PYTHONPATH
set -aux

GPU_NUMS=8
PORT=12346
MODEL_ARCH="resnet18"

python3 -m oneflow.distributed.launch \
        --nproc_per_node $GPU_NUMS \
        --master_addr 127.0.0.1 \
        --master_port $PORT \
        main.py \
        --cfg configs/cnn_default_settings.yaml \
        --model_arch $MODEL_ARCH \
        --epochs 50 \
        --batch-size 32