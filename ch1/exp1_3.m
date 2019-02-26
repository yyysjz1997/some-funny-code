%exm11432_1.m
clf reset,shg
set(gcf,'unit','normalized','position',[0.1,0.2,0.64,0.35]);
set(gcf,'defaultuicontrolunits','normalized');
set(gcf,'defaultuicontrolfontsize',12);
set(gcf,'defaultuicontrolfontname','隶书');
set(gcf,'defaultuicontrolhorizontal','left');
str='归一化二阶系统阶跃响应曲线';
set(gcf,'name',str,'numbertitle','off');		%书写图形窗名
h_axes=axes('position',[0.05,0.2,0.6,0.7]);	%定义轴位框位置  
set(h_axes,'xlim',[0,15]);						%设置时间轴长度
str1='当前阻尼比=';
t=0:0.1:10;z=0.5;y=step(1,[1 2*z 1],t);
hline=plot(t,y);
htext=uicontrol(gcf,'style','text',...	%制作静态说明文本框				<14>
   'position',[0.67,0.8,0.33,0.1],...
   'string',[str1,sprintf('%1.4g\',z)]);
hslider=uicontrol(gcf,'style','slider',...	%创建滑动键					<17>
   'position',[0.67,0.65,0.33,0.1],...
   'max',2.02,'min',0.02,...		%设最大阻尼比为2，最小阻尼比为0.02		<19>
   'sliderstep',[0.01,0.05],...%箭头操纵滑动步长1%，游标滑动步长5%		<20>
   'Value',0.5);					%缺省取阻尼比等于0.5   						<21>
hcheck1=uicontrol(gcf,'style','checkbox',...	%创建峰值检录框				<22>
   'string','最大峰值' ,...
   'position',[0.67,0.50,0.33,0.11]);
vchk1=get(hcheck1,'value');						%获得峰值检录框的状态值		<25>
hcheck2=uicontrol(gcf,'style','checkbox',...	%创建上升时间检录框			<26>
   'string','上升时间(0->0.95)',...
   'position',[0.67,0.35,0.33,0.11]);
vchk2=get(hcheck2,'value'); 					%获得上升时间检录框的状态值	<29>
set(hslider,'callback',[...						%操作滑动键,引起回调			<30>
   'z=get(gcbo,''value'');',...				%获得滑动键状态值				<31>		
   'callcheck(htext,str1,z,vchk1,vchk2)']);	%被回调的函数文件				<32>
set(hcheck1,'callback',[...						%操作峰值检录框,引起回调	<33>
   'vchk1=get(gcbo,''value'');',...			%获得峰值检录框状态值		<34>
   'callcheck(htext,str1,z,vchk1,vchk2)']);	%被回调的函数文件				<35>
 set(hcheck2,'callback',[...						%操作峰值检录框,引起回调	<36>
    'vchk2=get(gcbo,''value'');',...			%获得峰值检录框状态值		<37>
    'callcheck(htext,str1,z,vchk1,vchk2)']);	%被回调的函数文件				<38>
