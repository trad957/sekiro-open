# 定义变量
image_name = sekiro_server
port = 5612

# 定义build目标
image:
	docker build -t $(image_name) .

.PHONY: image