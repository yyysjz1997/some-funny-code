function [sys,x0,str,ts] = sfuntmpl(t,x,u,flag)
switch flag,
  %%%%%%%%%%%%%%%%%%
  % Initialization %
  %%%%%%%%%%%%%%%%%%
  case 0,
    [sys,x0,str,ts]=mdlInitializeSizes;

  %%%%%%%%%%%%%%%
  % Derivatives %
  %%%%%%%%%%%%%%%
  case 1,
    sys=mdlDerivatives(t,x,u);

  %%%%%%%%%%
  % Update %
  %%%%%%%%%%
  case 2,
    sys=mdlUpdate(t,x,u);

  %%%%%%%%%%%
  % Outputs %
  %%%%%%%%%%%
  case 3,
    sys=mdlOutputs(t,x,u);

  %%%%%%%%%%%%%%%%%%%%%%%
  % GetTimeOfNextVarHit %
  %%%%%%%%%%%%%%%%%%%%%%%
  case 4,
    sys=mdlGetTimeOfNextVarHit(t,x,u);

  %%%%%%%%%%%%%
  % Terminate %
  %%%%%%%%%%%%%
  case 9,
    sys=mdlTerminate(t,x,u);

  %%%%%%%%%%%%%%%%%%%%
  % Unexpected flags %
  %%%%%%%%%%%%%%%%%%%%
  otherwise
    error(['Unhandled flag = ',num2str(flag)]);

end

% end sfuntmpl

%
%==================================================
% mdlInitializeSizes
% Return the sizes, initial conditions, 
% and sample times for the S-function.
%==================================================
%
function [sys,x0,str,ts]=mdlInitializeSizes

sizes = simsizes;
% ����䷵��һ��û�о�����ʼ����sizes���飬��������
% s-function��Ϣ�����塣
% ����s-function��ʵ�������sizes��������ֶε��������
% �Ը��ֶν��и�ֵ��
sizes.NumContStates  = 0;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 0;
sizes.NumInputs      = 0;
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 1;   
% at least one sample time is needed

sys = simsizes(sizes);

% ��sizes��ֵ��֮���ٵ���simsizesָ�������õ�sizes
% ������Ϊ���������ѽ�����ظ�sys������
% ��ʵ��simsizes(sizes)ֻ�ǰ�sizes�������һ������Ϊ6��
% �����������ȫ������һ���򵥵ĸ�ֵ������������ֵ��
% sys=[0,0,0,0,1,1];
% ע�������˳���������ֶ�˳����ͬ��

% initialize the initial conditions
%
x0  = [];

%
% str is always an empty matrix
%
str = [];

%
% initialize the array of sample times
%
ts  = [0 0];

% end mdlInitializeSizes

%
%==================================================
% mdlDerivatives
% Return the derivatives for the continuous states.
%==================================================
%
function sys=mdlDerivatives(t,x,u)

sys = [];

% end mdlDerivatives

%
%====================================================
% mdlUpdate
% Handle discrete state updates, sample time hits, 
% and major time step
% requirements.
%====================================================
%
function sys=mdlUpdate(t,x,u)

sys = [];

% end mdlUpdate

%
%=====================================================
% mdlOutputs
% Return the block outputs.
%=====================================================
%
function sys=mdlOutputs(t,x,u)

sys = [];
% end mdlOutputs

%
%========================================================
% mdlGetTimeOfNextVarHit
% Return the time of the next hit for this block. 
% Note that the result is absolute time .  
% Note that this function is only used when you specify a
% variable discrete-time sample time [-2 0] 
% in the sample time array in mdlInitializeSizes.

%========================================================
%
function sys=mdlGetTimeOfNextVarHit(t,x,u)

sampleTime = 1;    
%  Example, set the next hit to be one second later.
sys = t + sampleTime;

% end mdlGetTimeOfNextVarHit

%
%=====================================================
% mdlTerminate
% Perform any end of simulation tasks.
%=====================================================
%
function sys=mdlTerminate(t,x,u)

sys = [];

% end mdlTerminate
