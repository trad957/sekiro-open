## 构建方式

- 安装docker 和 docker-compose
- Linux/mac下，运行 make image 构建 docker 镜像

## 部署方式

- docker-compose up -d 启动服务
- docker-compose down 关闭服务
- 需要多个不同端口的服务，可以通过修改docker-compose.yml文件，增加服务数量，复制第一个服务的配置，修改端口号和服务名和容器名即可
- (你想设置的服务名，不能重复，例如sekiro-server_1):  
    image: sekiro-server  
    container_name: (你想设置的镜像名，不能重复，例如sekiro-server-1)  
    privileged: true  
    ports:  
    \- "(改成你想要对外暴露的端口):5612"



