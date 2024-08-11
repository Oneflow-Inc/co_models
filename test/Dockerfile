FROM oneflowinc/oneflow:0.9.1.dev20240203-cuda11.8

RUN python3 -m pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

COPY requirements.txt /tmp/requirements.txt
RUN python3 -m pip install --no-cache-dir -r /tmp/requirements.txt

RUN python3 -m pip install --pre oneflow -f https://oneflow-staging.oss-cn-beijing.aliyuncs.com/branch/master/cu118

WORKDIR /workspace

RUN rm /tmp/requirements.txt
