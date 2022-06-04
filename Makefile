## install: 安装 protoc protoc-gen-go protoc-gen-go-grpc 依赖 
install:
	@echo "安装 protoc protoc-gen-go protoc-gen-go-grpc" \
	wget  https://github.com/protocolbuffers/protobuf/releases/download/v3.20.1/protoc-3.20.1-linux-x86_64.zip -O/tmp/protoc-3.20.1-linux-x86_64.zip \
	&& unzip /tmp/protoc-3.20.1-linux-x86_64.zip -d /tmp/protoc-3.20.1-linux-x86_64 \
	&& mv /tmp/protoc-3.20.1-linux-x86_64/bin/protoc $GOROOT/bin/ \
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest 
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
## gen: 通过Makefile下面的protobuf文件生成代码到proto文件夹,如果已经生成会覆盖
gen: clean
	mkdir -p ./proto && protoc -I ./ --go_out=./proto --go-grpc_out=./proto ./user/*
## clean: 清理生成的 proto 文件夹
clean: 
	rm -rf ./proto
## help: 查看帮助信息
.PHONY: help
help: Makefile
	@echo -e "\nUsage: make <TARGETS> <OPTIONS> ...\n\nTargets:"
	@sed -n 's/^##//p' $< | column -t -s ':' | sed -e 's/^/ /'
	@echo "$$USAGE_OPTIONS"