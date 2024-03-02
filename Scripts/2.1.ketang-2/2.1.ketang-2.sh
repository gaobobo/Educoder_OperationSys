#!/bin/sh

#     Operation System Course's Educoder excrises shell script. / 操作系统课程的头歌过关脚本。
#     Copyright (C) 2024  gaobobo

DownloadSite=${1:-Gitee}
readonly DownloadSite

mkdir -p /tmp/2.1.ketang-2

case $DownloadSite in
    Gitee)
        wget -O /tmp/2.1.ketang-2/恢复点指令地址.txt https://gitee.com/coconut_floss/EduCoder_OperationSys/raw/main/Source/2.1.ketang-2/恢复点指令地址.txt
        ;;
    Github)
        wget -O /tmp/2.1.ketang-2/恢复点指令地址.txt https://raw.githubusercontent.com/gaobobo/EduCoder_OperationSys/main/Source/2.1.ketang-2/恢复点指令地址.txt
        ;;
    *)
        echo "Unknown download site: $DownloadSite"
        echo "未知的下载站点：$DownloadSite"
        return 1
        ;;
esac

mv -f /tmp/2.1.ketang-2/恢复点指令地址.txt /data/workspace/myshixun/恢复点指令地址.txt

return 0