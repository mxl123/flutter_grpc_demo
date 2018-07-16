#
# proto.sh
#
# Created by mxl on 2018/1/8.
# Copyright © 2017年 wanfangdata. All rights reserved.

set -e

export PATH=$PATH:/usr/local/bin

CURRENT_DIR=$(pwd)

echo -e "\033[32m-----开始-----\033[0m"
echo -e "\033[32m-----脚本执行目录 ${CURRENT_DIR}-----\033[0m"
# 输出目录
DART_OUT_SRC_DIR="${CURRENT_DIR}/lib/src"
# 最终给protoc使用的路径
DART_OUT_DIR="${DART_OUT_SRC_DIR}/generated"
# 设置grpc的proto文件根目录相对路径
PROTO_FILE_BASE_DIR="protos/"
# 删除文件夹
function removeDIR() {
	if [ -d "$1" ]; then
		echo -e "\033[33m-----清空上次输出文件 $1-----\033[0m"
   	 	rm -rf "$1"
	fi
}
# 不存在则创建
function checkAndMKDIR() {
	if [ ! -d "$1" ]; then
		echo -e "\033[33m-----创建文件夹 $1-----\033[0m"
    	mkdir $1
	fi
}
# 清空目录
removeDIR ${DART_OUT_DIR}
# 创建输出目录
checkAndMKDIR ${DART_OUT_DIR}

echo -e "\033[32m-----正在执行protoc-----\033[0m"

PROTO_DIC=$(pwd)
# 在指定目录下查找proto文件，并编译输出到“相对于指定目录”的相对路径
function findProtoAndCompile () {
  for file in $(ls $1)
  do
  	# echo -e "\033[31m readfile $1${file} \033[0m"
	# 这里的-d表示是一个directory，即目录/子文件夹
    if [ -d "$1${file}" ]
    then
    # echo "$1${file}"
	# 子文件夹则递归
      findProtoAndCompile "$1${file}/"
    else
	# 读取该文件的地址
      PROTO_FILE_PATH="$1${file}"
      echo -e "\033[33m 正在编译proto ${PROTO_FILE_PATH} \033[0m"
      protoc --dart_out=grpc:${DART_OUT_DIR} -Iprotos ${PROTO_FILE_PATH}
   fi
  done
}

findProtoAndCompile ${PROTO_FILE_BASE_DIR}

echo -e "\033[32m-----完成-----\033[0m"

echo -e "\033[32m-----输出目录为 ${JAVA_OUT_DIR}-----\033[0m"

