%exp4_1.m
clear
clc
close all
%ϵͳ����
a=[1 2 -1 2;2 6 3 0;4 7 -8 -5;7 2 1 6];
b=[-1 0 0 1]';
c=[-2 5 6 1];d=7;
%��ϵͳ���㼫��
[z,p,k]=ss2zp(a,b,c,d)
%��������ʵ������ȡ���ʵ��������ĸ���
ii=find(real(z)>0)
n1=length(ii);
%���鼫���ʵ������ȡ����ʵ��������ĸ���
jj=find(real(p)>0)
n2=length(jj);
%�ж�ϵͳ�Ƿ��ȶ�
if(n2>0)
   disp('the system is unstable')
   disp('the unstable pole are:')
   disp(p(jj))
   else
   disp('the system is stable')
end
%�ж�ϵͳ�Ƿ�Ϊ��С��λϵͳ
if(n1>0)
   disp('the system is a nonminimal phase one')
else
   disp('the syetem is a minimal phase one')
end
%�����㼫��ͼ
pzmap(p,z)
