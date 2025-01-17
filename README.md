> 由于本人该课程已结课，故该脚本不再更新。

# 操作系统头歌快捷通关脚本

本项目提供shell脚本，运行后即可快速通关。

本项目不检查任何来自Gitee的Issue。如果你从Gitee访问本项目，可能不是最新的副本。前往本项目的[Github主页](https://github.com/gaobobo/EduCoder_OperationSys)获取最新的更新。

## 如何使用

将下列代码中的`{LevelCode}`替换为相应的的关卡代号即可。关卡代号为`章节号.ketang(课堂)/kehou(课后)-小关`，例如，“课后作业3.3.2：进程的调度”的“第1关：版本 0 内核中的进程调度分析”关卡代号为`3.3.2.kehou-1`。

```shell
ping -c 3 www.baidu.com
if [ $? -ne 0 ]; then
    clear
    echo "网络不通，无法安装。请稍后再试。"
    exit 1
fi
clear
# 使用Gitee站点镜像：
wget -O /tmp/start.sh https://gitee.com/coconut_floss/EduCoder_OperationSys/raw/main/Scripts/start.sh
chmod +x /tmp/start.sh
/tmp/start.sh {LevelCode}
```

> 备选方案：
> ```shell
> ping -c 3 www.baidu.com
> if [ $? -ne 0 ]; then
>     clear
>     echo "网络不通，无法安装。请稍后再试。"
>     exit 1
> fi
> clear
> # 使用Github作为下载源：
> wget -O /tmp/start.sh https://github.com/gaobobo/EduCoder_OperationSys/tree/main/Scripts/start.sh
> chmod +x /tmp/start.sh
> /tmp/start.sh {LevelCode}
> ```

各个关卡的通关代码也可在微信公众号“椰松杂货铺”获取。

## 如何反馈

直接提交Issue即可。

## 开源许可

本项目遵循`GNU GENERAL PUBLIC LICENSE`开源许可。

## 贡献此项目

本项目根目录有两个文件夹，分别为：

- Scripts：用于存放脚本文件。
    - start.sh：用于自动下载相应的通关脚本。用法`./start.sh <关卡代码> [下载源：Gitee|Github]`。
    - 1-1/1-2.....：存放通关脚本，由`start.sh`自动下载后自动运行。
        - 1-1.sh：通关脚本。
- Resource：其他资源，包括替换文件等。
    - 1-1/1-2.....：存放相应关卡通关脚本所需要的替换文件。此文件由通关脚本自动下载。

如需贡献项目，按照上述规范提交即可。