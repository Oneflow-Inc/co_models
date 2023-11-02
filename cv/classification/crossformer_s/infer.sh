export PYTHONPATH=$PWD:$PYTHONPATH
set -aux

GPU_NUMS=1
PORT=12357
MODEL_ARCH="crossformer_small_patch4_group7_224"
IMAGE_SIZE=224
BATCH_SIZE=64

python3 -m oneflow.distributed.launch \
        --nproc_per_node $GPU_NUMS \
        --master_addr 127.0.0.1 \
        --master_port $PORT \
        main.py \
        --cfg configs/default_settings.yaml \
        --model_arch $MODEL_ARCH \
        --image-size $IMAGE_SIZE \
        --batch-size $BATCH_SIZE \
        --throughput
