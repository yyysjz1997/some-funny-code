%���켣ͼ�Ļ���
clc
clear
close all
%��֪ϵͳ�������ݺ���ģ��
num=1;
den=conv([0.01 1 0],[0.02 1]);
rlocus(num,den)
[k1,p]=rlocfind(num,den)
[k2,p]=rlocfind(num,den)

title('root locus')


