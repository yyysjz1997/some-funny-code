echo off % ����ʾ��������

clear
clc
a=4;
b=6

disp('��ͣ���밴���������') % dispָ�����������ʾ�ַ�
pause % ��ͣ��ֱ���û��������

echo on
% ��ʾ�������ݣ�ע��matlabĬ���ǲ���ʾ
c=a+b
% ��ʱ�ѿ���Ȩ�������̣���������г���k��ʾ��),
% ����return���س����˳�������ִ���������䡣
keyboard  
        
d=input('Enter the value of d=');%��ʾ�û�����d��ֵ
e=a*24+b*8+d*6-c
f=e/d
disp('work pause 30 second') % dispָ�����������ʾ�ַ�
pause(10)  %��ͣ10��
disp(f)  % ��ʾָ�������Ľ����������ʾ��������
echo off
