value=get(hObject, 'value'); % 取得此 UI 对象的选项 
    switch value	% 依选项来加载声音文件
    case 1
        load chirp.mat
    case 2
        load handel.mat
    case 3
        load laughter.mat
   end 
   plot((1:length(y))/Fs, y);	% 画出声音的波形
   handles.y=y;			% 纪录声音讯号
   handles.Fs=Fs;			% 纪录取样频率
   guidata(hObject, handles);	% 储存将用于其它函式的 handles 