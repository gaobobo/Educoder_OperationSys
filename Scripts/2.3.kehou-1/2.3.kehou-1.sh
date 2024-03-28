#!/bin/sh

#     Operation System Course's Educoder excrises shell script. / 操作系统课程的头歌过关脚本。
#     Copyright (C) 2024  gaobobo

DownloadSite=${1:-Gitee}
readonly DownloadSite

mkdir -p /tmp/2.3.kehou-1

case $DownloadSite in
    Gitee)
        wget -O /tmp/2.3.kehou-1/第三关.txt https://gitee.com/coconut_floss/EduCoder_OperationSys/raw/main/Source/2.3.kehou-1/第三关.txt
        wget -O /tmp/2.3.kehou-1/gdb.log https://gitee.com/coconut_floss/EduCoder_OperationSys/raw/main/Source/2.3.kehou-1/gdb.log
        ;;
    Github)
        wget -O /tmp/2.3.kehou-1/第三关.txt https://raw.githubusercontent.com/gaobobo/EduCoder_OperationSys/main/Source/2.3.kehou-1/第三关.txt
        wget -O /tmp/2.3.kehou-1/gdb.log https://raw.githubusercontent.com/gaobobo/EduCoder_OperationSys/main/Source/2.3.kehou-1/gdb.log
        ;;
    *)
        echo "Unknown download site: $DownloadSite"
        echo "未知的下载站点：$DownloadSite"
        return 1
        ;;
esac

mv -f /tmp/2.3.kehou-1/第三关.txt /data/workspace/myshixun/第三关.txt
mv -f /tmp/2.3.kehou-1/gdb.log /root/gdb.log

return 0