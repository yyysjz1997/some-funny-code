value=get(hObject, 'value'); % ȡ�ô� UI �����ѡ�� 
    switch value	% ��ѡ�������������ļ�
    case 1
        load chirp.mat
    case 2
        load handel.mat
    case 3
        load laughter.mat
   end 
   plot((1:length(y))/Fs, y);	% ���������Ĳ���
   handles.y=y;			% ��¼����Ѷ��
   handles.Fs=Fs;			% ��¼ȡ��Ƶ��
   guidata(hObject, handles);	% ���潫����������ʽ�� handles 