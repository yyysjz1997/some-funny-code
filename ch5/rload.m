% rload.m
% ʵ��һ�����Ը���

function[sys,xo]=rload(t,x,u,flag,R)
% ���ڲ�����ɢϵͳ���������û�а���ts
% ������Ҫ�û�����1���µĲ���
% ���ص���R

if flag==0
   sys=[0 0 2 1 0 0];
   % 0��״̬
   % 2�������sys(1)Ϊ���ص�����sys(2)Ϊ�����ѹ
   % 1�����룬uΪ���������ѹ
   % ��ʼ״̬Ϊ��
   xo=[];
elseif flag==1
   sys=0;
elseif flag==3
   sys(1)=u(1)/R;
   sys(2)=u(1);
   else
   sys=[];
   end