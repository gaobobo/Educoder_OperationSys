#!/bin/sh

#     Operation System Course's Educoder excrises shell script. / 操作系统课程的头歌过关脚本。
#     Copyright (C) 2024  gaobobo

readonly DownloadSite=${1:-Gitee}

cd /root/
touch oldFile{1..4}

chmod u+x oldFile1
chmod g+x oldFile2
chmod o+x oldFile3
chmod u=r,g=r,o=x oldFile4

exit 0