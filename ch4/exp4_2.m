%exp4_2.m
clear
clc
close all
%ϵͳ����
num=[3 16 41 28];
den=[1 14 110 528 1494 2117 112];
%��ϵͳ���㼫��
[z,p,k]=tf2zp(num,den)
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
p
z
