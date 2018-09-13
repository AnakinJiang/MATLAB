function p=ppadd(a,b)
%  ppadd: for polynomial addition.
%  ppadd(a,b) adds the polynomial a and b
%  多项式加法
%  2018.08
if nargin<2
     error(' Not enough input arguments ')  %  确认输入变量
end
a=a(:).' ;          %  将输入转化为行向量
b=b(:).' ;
na=length(a) ;       %  求相加的两多项式的项数
nb=length(b) ;
p=[zeros(1,nb-na) a]+[zeros(1,na-nb) b] ;     %  相加的两多项式项数不等时，高次补零
