FROM openjdk:8-jre

ARG NAME=mall
ARG JAR_FILE=mall.jar
USER root
# 设置时区 安装ps命令
ENV TZ=Asia/Shanghai
RUN set -eux; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
    echo $TZ > /etc/timezone; \
    apt-get update && apt-get install -y procps && apt-get install -y maven
# 新建应用目录
ENV HOME=/data/mall
RUN set -eux; \
    mkdir -p $HOME/config $HOME/log $HOME/bin $HOME/h2db $HOME/file $HOME/code
# build jar
ADD ./* $HOME/code/
WORKDIR $HOME/code
RUN set -eux;mvn clean install -DskipTests && cp $HOME/code/target/$JAR_FILE $HOME

# 导入启动脚本
ADD boot.sh $HOME/bin/boot.sh
# 启动脚本
ENTRYPOINT sh $HOME/bin/boot.sh start

# 端口
EXPOSE 8081