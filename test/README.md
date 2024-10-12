## 文件说明
```
.
├── README.md
├── requirements.txt  # 构建镜像所需的依赖
├── Dockerfile        # 定义Docker镜像内容的文本文件
├── build.sh          # 构建镜像命令
├── launch.sh         # 启动容器命令
└── test_maskrcnn.sh  # 测试maskrcnn模型

```
## test_maskrcnn.sh

### 介绍
`test_maskrcnn.sh` 用于测试maskrcnn模型

### 脚本功能
1. **复制子目录**：将指定的子目录内容复制到 `/workspace/temp_model` 目录下。
2. **进入工作目录**：进入 `/workspace/temp_model` 目录。
3. **运行脚本**：执行该目录下的脚本（`infer.sh`缺省脚本）。

### 使用方法

```bash
./test_maskrcnn.sh 
```

