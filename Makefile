# 定义变量
image_name = sekiro_server
port = 5612

# 定义build目标
image:
	docker build --build-arg SEKIRO_PORT=$(port) -t $(image_name):$(port) .

.PHONY: image