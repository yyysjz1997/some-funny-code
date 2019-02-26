clear
clc
close all
%输入典型二阶系统参数，确定系统传递函数模型
alph=input('please input alph=');
wn=input('please input wn=');
num=wn^2;
den=[1 2*alph*wn wn^2];
%判断系统是否稳定
[z,p,k]=tf2zp(num,den);
ii=find(real(z)>0);
n1=length(ii);
jj=find(real(p)>0);
n2=length(jj);
if(n2>0)
   disp('the system is unstable')
   disp('it is no use for getting 动态参数')
   else
      %调用求取二阶系统阶跃响应动态参数的函数文件
      [y,x,t]=step(num,den);
      plot(t,y)
      [pos,tr,ts2,tp]=stepchar(y,t)
      
end
