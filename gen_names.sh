#!/bin/bash
for subdir in "cv/classification"/*/; do
    if [ -d "$subdir" ]; then
        dirname=$(basename "$subdir")
	if [[ "$dirname" == "data" || "$dirname" == "configs" ]]; then
            continue
        fi
        echo "基于$dirname的图像分类模型测试"
    fi
done

for subdir in "cv/detection"/*/; do
    if [ -d "$subdir" ]; then
        dirname=$(basename "$subdir")
        echo "基于$dirname的目标检测模型测试"
    fi
done

for subdir in "cv/segment"/*/; do
    if [ -d "$subdir" ]; then
        dirname=$(basename "$subdir")
        echo "基于$dirname的实体分割模型测试"
    fi
done

for subdir in "cv/Face_Recognition"/*/; do
    if [ -d "$subdir" ]; then
        dirname=$(basename "$subdir")
	if [[ "$dirname" == "backbones" || "$dirname" == "configs" ]]; then
            continue
        fi
	if [[ "$dirname" == "eval" || "$dirname" == "tools" ]]; then
            continue
        fi
	if [[ "$dirname" == "utils" ]]; then
            continue
        fi
        echo "基于$dirname的人脸识别模型测试"
    fi
done

# cv/Neural_Style_Transfer
echo "基于神经网络风格迁移模型测试"

for subdir in "nlp/libai"/*/; do
    if [ -d "$subdir" ]; then
        dirname=$(basename "$subdir")
        echo "基于$dirname的自然语言模型测试"
    fi
done

# nlp/text_classfication
echo "基于transformer的文本分类模型测试"


for subdir in "science"/*/; do
    if [ -d "$subdir" ]; then
        dirname=$(basename "$subdir")
        echo "基于$dirname的科学计算模型测试"
    fi
done





