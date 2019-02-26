%curve interpolation
ys=[0 0.9 0.6 1 0 0.1 -0.3 -0.7 -0.9 -0.2]; %���е�������ys
xs=0:length(ys)-1;  %���е�������xs
x=0:0.1:length(ys)-1;%�µ�������x
y1=interp1(xs,ys,x,'nearest'); %��ֵ�����µ�������y1
y2=interp1(xs,ys,x,'linear');  %��ֵ�����µ�������y2
y3=interp1(xs,ys,x,'spline');  %��ֵ�����µ�������y3
y4=interp1(xs,ys,x,'cubic');   %��ֵ�����µ�������y4
plot(xs,ys,'+k',x,y1,':r',x,y2,'-m',x,y3,'--c',x,y4,'--b') %�ֱ���Ʋ�ͬ��������������
legend('sampled point','nearest','linear','spline','cubic')
