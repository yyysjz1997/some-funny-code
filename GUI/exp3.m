close all
clear
clc
% figure(1);
% L=get(gcf,'Position');
% W=L(3);
% H=L(4);
%L=get(gcf,'Position');
% hf=figure('Color',[0,0,1],'Position',[100,100,800,400],...
%     'Name','菜单设计示例', 'NumberTitle','off','MenuBar','none');
hf2=figure('Color',[1,1,1],'Position',[1,1,800,400],'Name','菜单设计示例', 'NumberTitle','on','visible','on','pointer','crosshair');
     hfile=uimenu(hf,'label','&File');
     hhelp=uimenu(hf,'label','&Help');   
     uimenu(hfile,'label','&New','call','disp(''New Item'')');
     uimenu(hfile,'label','&Open','call','disp(''Open Item'')');       
    uimenu(hhelp,'label','About ...','call', 'disp(''Help Item'')'); 