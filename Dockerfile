FROM openjdk:8-jre-slim

ARG NAME
ARG VERSION
ARG JAR_FILE

LABEL name=$NAME \
      version=$VERSION
# 设置时区 安装ps命令
ENV TZ=Asia/Shanghai
RUN set -eux; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
    echo $TZ > /etc/timezone; \
    apt-get update && apt-get install -y procps
# 新建应用目录
ENV HOME=/data/mall
RUN set -eux; \
    mkdir -p $HOME/config $HOME/log $HOME/bin $HOME/h2db $HOME/file

# 导入启动脚本
ADD boot.sh $HOME/bin/boot.sh
# 导入jar
ADD target/$JAR_FILE $HOME/$JAR_FILE
USER root
# 启动脚本
ENTRYPOINT sh $HOME/bin/boot.sh start

# 端口
EXPOSE 8081