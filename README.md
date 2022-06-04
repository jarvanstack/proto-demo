# proto-demo

## quick start

```bash
$ make help
-e 
Usage: make <TARGETS> <OPTIONS> ...

Targets:
  install   安装 protoc protoc-gen-go protoc-gen-go-grpc 依赖 
  gen       通过Makefile下面的protobuf文件生成代码到proto文件夹,如果已经生成会覆盖
  clean     清理生成的 proto 文件夹
  help      查看帮助信息
```

### 首先安装 protoc

确保安装了golang 环境和常见开发依赖

例如 ubuntu 

```bash
sudo apt install net-tools  -y
sudo apt install  git  -y
sudo apt install  make  -y
sudo apt install  automake  -y
sudo apt install  cmake -y
sudo apt install  telnet  -y
sudo apt install  gcc  -y 
sudo apt install  g++ -y
sudo apt install  libtool -y
sudo apt install  unzip -y
sudo apt install  vim -y
sudo apt install  uidmap -y
```

```bash
$ make install
```

### gen

```bash
$ make gen
```

```bash
$ tree -L 3
├── Makefile
├── README.md
├── proto
│   └── user
│       ├── user.pb.go
│       └── user_grpc.pb.go
└── user
    └── user.proto
```