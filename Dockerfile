# 使用包含Java和Maven以及unzip的基础镜像
FROM maven:3.6.3-jdk-11 as builder

# 安装unzip工具
RUN apt-get update && apt-get install -y unzip

# 设定工作目录为/app
WORKDIR /app

# 将当前目录下的所有文件拷贝到镜像的工作目录下
COPY . .

# 运行脚本构建项目
RUN chmod +x ./build_demo_server.sh \
    && ./build_demo_server.sh \
    && ls -la ./target/ # 这行是为了检查输出文件是否按预期创建

# 运行Sekiro服务的命令
CMD ["/bin/bash", "-c", "./target/sekiro-open-demo/bin/sekiro.sh"]

