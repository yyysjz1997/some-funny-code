clear
clc
close all
%������Ͷ���ϵͳ������ȷ��ϵͳ���ݺ���ģ��
alph=input('please input alph=');
wn=input('please input wn=');
num=wn^2;
den=[1 2*alph*wn wn^2];
%�ж�ϵͳ�Ƿ��ȶ�
[z,p,k]=tf2zp(num,den);
ii=find(real(z)>0);
n1=length(ii);
jj=find(real(p)>0);
n2=length(jj);
if(n2>0)
   disp('the system is unstable')
   disp('it is no use for getting ��̬����')
   else
      %������ȡ����ϵͳ��Ծ��Ӧ��̬�����ĺ����ļ�
      [y,x,t]=step(num,den);
      plot(t,y)
      [pos,tr,ts2,tp]=stepchar(y,t)
      
end
