%exp4_12_.m
%margin����ͨ������bode����֮������bode�����õ�
%��ֵ����Ǻ�Ƶ��ʸ����Ȼ����margin���Ƴ�����ԣ��
%�����ԣ�ȵĲ���ͼ��
clear
clc
close all
%�������ϵͳ��G(s)=1/(s^2+2*kosi*wn*s+wn^2)
[a,b,c,d]=ord2(1,0.2);
[mag,pha,w]=bode(a,b,c,d);
margin(mag,pha,w)


