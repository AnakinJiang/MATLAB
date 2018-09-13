[TOC]

MATLAB中的数据类型主要包括数值类型、逻辑类型、字符型、函数句柄、结构体和单元数组类型。

# 数值类型

数值类型主要有整数、单精度浮点数和双精度浮点数。对于运算结果的整数类型溢出的将表示该整数类型最大值或最小值。e表示以10为底的指数。

数据格式：int8、unit8、int16、uint16、int32、uint32、int64和uint64、single、double。

```matlab
a=uint32(120);b=single(22.809);c=73.226;
%ab=a*b 单精度浮点类型不能与整数类型进行算数运算
ac=a*c; %双精度浮点数和整型进行运算结果为整型
bc=b*c; %双精度浮点数和单精度浮点数进行运算结果为单精度浮点数
eps1=eps(3);%获取与指定数最近的浮点数之间的间隙
```

复数包括实部和虚部，默认使用i或j表示虚部，常用函数如下：

- real(z)：返回复数z的实部
- imag(z)：返回复数z的虚部
- abs(z)：返回复数z的模
- angle(z)：返回复数z的辐角
- conj(z)：返回复数z的共轭复数
- complex(a,b)：以a为实部，b为虚部创建复数

MATLAB用Inf和-Inf表示正无穷和负无穷，NaN表示非数值量。

# 逻辑类型

逻辑类型主要有:<、<=、>、>=、== 和 ~=

```
A=1:9;
B=10-A;
TrueorFalse=(A==B);
```

# 字符串

每个字符串占两个字节。

## 字符串的构造

字符串或字符串数组的构造可以通过直接给变量赋值来实现，具体表达式中字符串的内容需要写在单引号内。如果字符串的内容包含单引号，那么以两个重复的单引号来表示。

# 函数句柄

函数句柄可以方便名称的管理，也可以加快程序运行的速度。

# 结构体类型

```matlab
%通过字段赋值创建结构体
Student1.name='Sam';
Student1.grade=6;
Student1;
%通过struct函数创建结构体struct{'field1',var1,'field2',var,...}
%%Schedule1(1)
ScheduleArray=repmat(struct('Day','Thursday','Time','15:00','Number',18),1,2);
ScheduleArray(1);
ScheduleArray(2);
newArray=struct('Day',{'Thursday','Friday'},'Time',{'15:00','9:00'},'Number',{18,6});
newArray(1);
newArray(2);
```

# 数组类型

```
Array1=[1,2,3,4,5,6,7,8,9];
Array2=1:9;
Array3=1:2:9;
Array4=linspace(0,5,6);
```

# 单元数组

每一个单元可以包括任意数组，每个单元的数值类型都可以不同。声明的时候用{}，逗号分隔单元，分号分隔行。

```matlab
CellA = {'x',[1;3;6];10,pi};
CellB = cell(2,2);
CellA{1,1};%{}寻访内容
cellA(1,1);%()寻访单元
%合并单元数组
CellC = {'haha'};
CellD = {CellA;CellC};
%删除指定单元
CellA{1,2}={};
```

# map容器

```matlab
schedulemap = containers.Map({'Monday','Tuesday','Wednesday','Thursday','Friday'},{'Maths','Chinese','History','Geography','Biology'});
newMap = containers.Map();
remove(schedulemap,'Thursday')

% 添加星期六及对应科目
schedulemap('Saturday') = 'Public elective course';

% 修改Key 必须先删除再添加
remove(schedulemap,'Saturday');
schedulemap('Sunday') = 'MBA';

% 修改values
schedulemap('Monday')='english';
keys(schedulemap);
values(schedulemap);
```

