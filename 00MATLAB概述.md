[TOC]

MATLAB [1]  是美国[MathWorks](https://baike.baidu.com/item/MathWorks)公司出品的商业[数学软件](https://baike.baidu.com/item/%E6%95%B0%E5%AD%A6%E8%BD%AF%E4%BB%B6)，用于算法开发、数据可视化、数据分析以及[数值计算](https://baike.baidu.com/item/%E6%95%B0%E5%80%BC%E8%AE%A1%E7%AE%97/3729797)的高级技术计算语言和交互式环境，主要包括MATLAB、Simulink和PolySpace三大部分。

# 目录结构

安装完MATLAB R2018a之后，用户自定义的安装目录内边包含一系列的文件和文件夹。

- \bin\win32：MATALAB R2018a系统可执行的相关文件
- \extern：创建MATALAB R2018a的外部程序接口的工具
- \help：帮助系统
- \java：MATALAB R2018a的Java支持程序
- \notebook：Notebook是用来实现MATLAB教学工作环境与Word文字处理环境信息交互的软件，是一个兼备数学计算、图形显示和文字处理能力的集成环境（MATALAB R2018a 并没有）
- \rtw：Real-Time Workshop软件包
- \simulink：Simulink软件包，用于动态系统的建模、仿真与分析
- \stateflow：Stateflow软件包，用于状态机设计的图形化开发和设计工具（MATALAB R2018a并没有）
- \sys：MATALAB R2018a需要的工具和操作系统库
- \toolbox：MATALAB R2018a的各种总应用程序
- \uninstall：MATALAB R2018a的卸载程序
- \license.txt：软件许可协议的内容
- \patents.txt：软件申请的专利内容

# 搜索路径

MATLAB提供了专门的路径搜索器来搜索存储在内存中的M文件和其他相关文件，MATLAB自带的文件所存放路径都被默认包含在搜索路径中。

- 当某一文件夹的夫文件在搜索文件路径中而本身不在搜索路径中时，则此文件不会被搜索到

# 高频命令

## clear

用于清除工作空间的变量，最常用的形式是`clear`和`clear var`。

## clf/close

clf清除当前图形窗口的内容，close关闭当前图形窗口。

## clc/home

clc清除命令窗口内容，再将光标定位在左上角，home定位光标在左上角。

## who/whos

who和whos命令用于列出工作空间的变量名。who仅列出变量名称，whos则以列表形式列出变量名称、大小、所占字节数等详细信息。

## format

format用于设置数字的显示格式，该命令只影响显示，不影响数字的实际精度。

- format：恢复默认的精度
- format short：浮点数短格式精度
- format long：浮点数长格式精度

## save/load

save和load命令用于保存和加载数据，一般使用MAT文件作为保存文件

- save(filename)：将工作空间的所有变量保存在filename指定的文件中
- save(filename,var1,var2....)：将变量var1、var2等存入MAT文件中
- save(filename,var,'-append')：追加保存
- load(filename)：将filename中的变量全部加载到工作空间中
- load(filename,var)：将filename中的var加载到工作空间中

## cd/pwd

cd显示或改变当前工作文件夹

## help/doc

## sprintf/fprintf/disp

显示变量或文字内容

# tips

MATLAB文件命名不支持中文

Java对象用于在MATLAB中使用Java语言。Java是一种可以开发跨平台应用软件的面向对象的程序设计语言。输入`version -java`查看当前版本。