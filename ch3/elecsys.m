%微分方程函数
function xdot=elecsys(t,x)  %状态导数
Vs=1;
R=1.4;
L=2;
C=0.32;
xdot=[x(2)/C;1/L*(Vs-x(1)-R*x(2))];

%格式
%  function xdot=filename(t,x)
%     xdot=[表达式1；表达式2；表达式3；...；表达式n-1]
%  表达式1 对应  x1'=x2
%  表达式2 对应  x2'=x3
%  表达式3 对应  x3'=x4
%  ...
%  表达式n-1 对应  xn-1'=xn
%	如例exp3_1.m
%	x(1)=Vo   x(2)=iL
% x(1)'=x(2)/C
% x(2)'=(Vs-x(1)-R*x(2))/L