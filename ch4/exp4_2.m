%exp4_2.m
clear
clc
close all
%系统描述
num=[3 16 41 28];
den=[1 14 110 528 1494 2117 112];
%求系统的零极点
[z,p,k]=tf2zp(num,den)
%检验零点的实部；求取零点实部大于零的个数
ii=find(real(z)>0)
n1=length(ii);
%检验极点的实部；求取极点实部大于零的个数
jj=find(real(p)>0)
n2=length(jj);
%判断系统是否稳定
if(n2>0)
   disp('the system is unstable')
   disp('the unstable pole are:')
   disp(p(jj))
   else
   disp('the system is stable')
end
%判断系统是否为最小相位系统
if(n1>0)
   disp('the system is a nonminimal phase one')
else
   disp('the syetem is a minimal phase one')
end
%绘制零极点图
pzmap(p,z)
p
z
