%exm11432_1.m
clf reset,shg
set(gcf,'unit','normalized','position',[0.1,0.2,0.64,0.35]);
set(gcf,'defaultuicontrolunits','normalized');
set(gcf,'defaultuicontrolfontsize',12);
set(gcf,'defaultuicontrolfontname','����');
set(gcf,'defaultuicontrolhorizontal','left');
str='��һ������ϵͳ��Ծ��Ӧ����';
set(gcf,'name',str,'numbertitle','off');		%��дͼ�δ���
h_axes=axes('position',[0.05,0.2,0.6,0.7]);	%������λ��λ��  
set(h_axes,'xlim',[0,15]);						%����ʱ���᳤��
str1='��ǰ�����=';
t=0:0.1:10;z=0.5;y=step(1,[1 2*z 1],t);
hline=plot(t,y);
htext=uicontrol(gcf,'style','text',...	%������̬˵���ı���				<14>
   'position',[0.67,0.8,0.33,0.1],...
   'string',[str1,sprintf('%1.4g\',z)]);
hslider=uicontrol(gcf,'style','slider',...	%����������					<17>
   'position',[0.67,0.65,0.33,0.1],...
   'max',2.02,'min',0.02,...		%����������Ϊ2����С�����Ϊ0.02		<19>
   'sliderstep',[0.01,0.05],...%��ͷ���ݻ�������1%���α껬������5%		<20>
   'Value',0.5);					%ȱʡȡ����ȵ���0.5   						<21>
hcheck1=uicontrol(gcf,'style','checkbox',...	%������ֵ��¼��				<22>
   'string','����ֵ' ,...
   'position',[0.67,0.50,0.33,0.11]);
vchk1=get(hcheck1,'value');						%��÷�ֵ��¼���״ֵ̬		<25>
hcheck2=uicontrol(gcf,'style','checkbox',...	%��������ʱ���¼��			<26>
   'string','����ʱ��(0->0.95)',...
   'position',[0.67,0.35,0.33,0.11]);
vchk2=get(hcheck2,'value'); 					%�������ʱ���¼���״ֵ̬	<29>
set(hslider,'callback',[...						%����������,����ص�			<30>
   'z=get(gcbo,''value'');',...				%��û�����״ֵ̬				<31>		
   'callcheck(htext,str1,z,vchk1,vchk2)']);	%���ص��ĺ����ļ�				<32>
set(hcheck1,'callback',[...						%������ֵ��¼��,����ص�	<33>
   'vchk1=get(gcbo,''value'');',...			%��÷�ֵ��¼��״ֵ̬		<34>
   'callcheck(htext,str1,z,vchk1,vchk2)']);	%���ص��ĺ����ļ�				<35>
 set(hcheck2,'callback',[...						%������ֵ��¼��,����ص�	<36>
    'vchk2=get(gcbo,''value'');',...			%��÷�ֵ��¼��״ֵ̬		<37>
    'callcheck(htext,str1,z,vchk1,vchk2)']);	%���ص��ĺ����ļ�				<38>
