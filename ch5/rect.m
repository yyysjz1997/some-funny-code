% rect.m
% ʵ��һ�����಻�ص�ȫ��������

function[sys,xo]=rect(t,x,u,flag,R1,C,R)
% ���ڲ�����ɢϵͳ���������û�а���ts
% ������Ҫ�û�����3���µĲ���
% ����ĸ�ߵ���R1��ֱ���˲�����C�����ص���R
% ���ݲ���ȫ��������·��ԭ����д΢�ַ���

a1=-(1/R1+1/R)/C;
a2=-1/R/C;
b1=1/R1/C;
b2=0;
if flag==0
   sys=[1 0 2 1 0 0];
   % 1��״̬��xΪ���ֱ����ѹ��ֱ���˲����ݵ�ѹ��
   % 2�������sys(1)Ϊ���뽻��ĸ�ߵ�����sys(2)Ϊ���ֱ����ѹ
   % 1�����룬uΪ���������ѹ
   % ��ʼ״̬Ϊ��
   xo=0;
elseif flag==1
      if abs(u)>=x
         sys=a1*x+b1*abs(u);
      else
         sys=a2*x;
         end
      elseif flag==3
            if abs(u)>=x
               sys(1)=sign(u)*(abs(u)-x)/R1;
               sys(2)=x;
            else
               sys(1)=0;
               sys(2)=x;
            end
         else
            sys=[];
            end