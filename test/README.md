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
