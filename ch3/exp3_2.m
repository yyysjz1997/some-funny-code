clc
clear
% more on
a1=[0 1;1 -2];
b1=[0;1];
c1=[1 3];d1=[1];
a2=[0 1;-1 -3];
b2=[0;1];
c2=[1 4];d2=[0];
%��������
disp('��������')
[a,b,c,d]=series(a1,b1,c1,d1,a2,b2,c2,d2)
%��������
disp('��������')
[a,b,c,d]=parallel(a1,b1,c1,d1,a2,b2,c2,d2)
%������
disp('����������')
[a,b,c,d]=feedback(a1,b1,c1,d1,a2,b2,c2,d2,+1)
%������
disp('����������')
[a,b,c,d]=feedback(a1,b1,c1,d1,a2,b2,c2,d2)
%��λ������
disp('��λ����������')
[a,b,c,d]=cloop(a1,b1,c1,d1)


