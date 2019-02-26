function varargout = fig_exp2(varargin)
% FIG_EXP2 M-file for fig_exp2.fig
%      FIG_EXP2, by itself, creates a new FIG_EXP2 or raises the existing
%      singleton*.
%
%      H = FIG_EXP2 returns the handle to a new FIG_EXP2 or the handle to
%      the existing singleton*.
%
%      FIG_EXP2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIG_EXP2.M with the given input arguments.
%
%      FIG_EXP2('Property','Value',...) creates a new FIG_EXP2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fig_exp2_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fig_exp2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help fig_exp2

% Last Modified by GUIDE v2.5 24-Dec-2007 11:57:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fig_exp2_OpeningFcn, ...
                   'gui_OutputFcn',  @fig_exp2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before fig_exp2 is made visible.
function fig_exp2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fig_exp2 (see VARARGIN)

% Choose default command line output for fig_exp2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fig_exp2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fig_exp2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in soundFile.
function soundFile_Callback(hObject, eventdata, handles)
% hObject    handle to soundFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns soundFile contents as cell array
%        contents{get(hObject,'Value')} returns selected item from soundFile

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


% --- Executes during object creation, after setting all properties.
function soundFile_CreateFcn(hObject, eventdata, handles)
% hObject    handle to soundFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in closeButton.
function closeButton_Callback(hObject, eventdata, handles)
% hObject    handle to closeButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcbf);

% --- Executes on button press in PlaySound.
function PlaySound_Callback(hObject, eventdata, handles)
% hObject    handle to PlaySound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if isfield(handles, 'y')
    y=handles.y;
    Fs=handles.Fs;
    sound(y, Fs);
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


