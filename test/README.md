## 文件说明
```
.
├── README.md
├── requirements.txt  # 构建镜像所需的依赖
├── Dockerfile        # 定义Docker镜像内容的文本文件
├── build.sh          # 构建镜像命令
├── launch.sh         # 启动容器命令
├── cv_cls_test.sh    # 测试计算机视觉相关的分类模型
├── cv_det_test.sh    # 测试计算机视觉相关的检测模型
├── cv_face_test.sh   # 测试计算机视觉相关的人脸识别模型
├── cv_neu_test.sh    # 测试计算机视觉相关的风格转换模型
├── nlp_libai_test.sh # 测试自然语言相关OneFlow Libai中的模型
├── nlp_test.sh       # 测试自然语言相关的模型
└── science_test.sh   # 测试科学计算相关的模型

```
下面只解释其中一个测试脚本，其它脚本，参数和使用方法相同。
## cv_cls_test.sh

### 介绍
`cv_cls_test.sh` 是一个用于处理 `cv/classification` 目录下子目录的 Bash 脚本。根据用户提供的参数，该脚本可以对所有子目录、随机选取的子目录或前 n 个子目录进行操作。

### 脚本功能
1. **复制子目录**：将指定的子目录内容复制到 `/workspace/temp_model` 目录下。
2. **进入工作目录**：进入 `/workspace/temp_model` 目录。
3. **运行脚本**：执行该目录下的脚本（`infer.sh`缺省脚本）。

### 使用方法

```bash
./cv_cls_test.sh {all|random|n} {infer.sh|train.sh}

build.sh        cv_face_test.sh  launch.sh          README.md
cv_cls_test.sh  cv_neu_test.sh   nlp_libai_test.sh  requirements.txt
cv_det_test.sh  Dockerfile       nlp_test.sh        science_test.sh
