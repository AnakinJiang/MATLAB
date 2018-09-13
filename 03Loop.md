# 变量

在程序中会经常定义一些变量来保存和处理数据。从本质上看，变量代表了一段课操作的内存，也可以认为变量是内存的符号化表示。

## 变量的命名

- 大小写敏感
- 以字母开头，其后可以是任意字母或下划线，不可以是空格、中文、标点
- 不能使用MATLAB关键字
- 最多包含63个字符

## 变量的类型

- 局部变量
- 全局变量
- 永久变量：声明格式`persistent a`，只能在M文件中定义

## 特殊变量

- ans：系统默认的用作保存运算结果的变量名
- pi：圆周率
- eps：机器零阈值，MATLAB中的最小数
- inf：表示无穷大
- NaN或nan：表示不定数
- i或j：表示虚数
- nargin：函数的输入参数个数
- nargout：函数的输出参数个数
- realmin：可用的最小正实数
- realmax：可用的最大正实数
- intmax：可用的最大正整数
- varargin：可变的函数输入参数个数
- varargout：可变的函数输出参数个数
- beep：使计算机发出“嘟嘟”声音

## 关键字

20个

# 控制流

## if-else-end分支

```
if expression
	commands
end
################
if expression
	commands1
else
	commands2
end
################
if expression1
	commands1
elseif expression2
	commands2
...
else
	commandsn
end
```

## switch-case 结构

```
switch value
	case test1
		command1
	case test2
		command2
	...
	case testk
		commandk
	otherwise
		commands
end
```

## try-catch 结构

```
try
	command1
catch
	command2
end
```

## for循环语句

```
for x=array
	commands
end
```

## while循环结构

```
while expression
	commands
end
```

# 其他控制流指令

## return

结束调用函数，将控制权放回主函数或Commands。

## input

将MATLAB的“控制权”暂时交给用户，用户通过键盘输入数值、字符串或表达式等，并按Enter键将输入内容传递到工作区，同时把“控制权”交还给MATLAB。常用格式：

- Value = input('message')
- Value = input('message'，'s')

第二种格式表示以字符串的形式传递。

## yesinput

yesinput指令是一个只能输入的指令，它提供的输入值是一个默认量，并可以对输入范围检测，其具体句法格式如下：

```
Value = yesinput('Prompt',Default,Possib)
```

## Pause指令

控制执行文件的暂停与恢复，具体格式如下：

- pause：暂停执行文件，等待用户按任意键恢复
- pause(n)：在继续执行文件之前，暂停n秒

## erre和warning指令

- error('message')：显示出错信息message，终止程序