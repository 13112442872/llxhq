#!/bin/bash

if pgrep -f 'http-server' >/dev/null 2>&1; then
  # 如果进程已存在，则输出提示信息并退出脚本
  echo "http-server is already running."
  exit 0
fi

#workdir=$(dirname $0)

(
cd /root/llxhq/
npx http-server > /dev/null 2>&1 &
)
