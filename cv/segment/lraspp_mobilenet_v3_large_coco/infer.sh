 python train.py \
    -b 24 \
    --dataset coco \
    --data-path /dataset/coco \
    --model lraspp_mobilenet_v3_large_coco \
    --lr 0.12 \
    --pretrained \
    --test-only
