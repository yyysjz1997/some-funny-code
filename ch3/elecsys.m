%΢�ַ��̺���
function xdot=elecsys(t,x)  %״̬����
Vs=1;
R=1.4;
L=2;
C=0.32;
xdot=[x(2)/C;1/L*(Vs-x(1)-R*x(2))];

%��ʽ
%  function xdot=filename(t,x)
%     xdot=[���ʽ1�����ʽ2�����ʽ3��...�����ʽn-1]
%  ���ʽ1 ��Ӧ  x1'=x2
%  ���ʽ2 ��Ӧ  x2'=x3
%  ���ʽ3 ��Ӧ  x3'=x4
%  ...
%  ���ʽn-1 ��Ӧ  xn-1'=xn
%	����exp3_1.m
%	x(1)=Vo   x(2)=iL
% x(1)'=x(2)/C
% x(2)'=(Vs-x(1)-R*x(2))/L