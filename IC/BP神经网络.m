%   BP���������������
%   ���õ�һ��2-2-1������
clear
clc
BP_LEARNING = 0.1;  %   ѧϰ����Ϊ0.1
wish_error = 0.0002;  %   �������
studytimes = 20000;  %   �������ѧϰ����
result=zeros(1,4);   %   ����һ�����󣬴������������
P = [0 0 1 1;
    0 1 0 1];
T = [0 1 1 0];
%   ��ʼ���������������Ȩֵ����ֵ
%   ����Ȩֵ�±꣬����weight12��ʾ��һ�������������ڶ�����Ԫ��Ȩֵ
weight11 = rands(1)
weight21 = rands(1)
weight12 = rands(1)
weight22 = rands(1)
b1 = rands(1)
b2 = rands(1)

%   ��ʼ��������Ȩֵ����ֵ
weight1 = rands(1)
weight2 = rands(1)
b = rands(1)
pause
%   ��ʼѵ������
for i=1:studytimes;
    real_error = 0;
    %   ��ʼ���м�������޸�Ȩֵ�ı������ۼ�ֵ
    change_b1=0;change_b2=0;change_b=0;
    change_weight11=0;change_weight21=0;change_weight12=0;change_weight22=0;
    change_weight1=0;change_weight2=0;
    for j=1:4;
        %% ǰ�����
         % ��һ����������Ԫ�����
        hidelayer1 = weight11*P([1],[j]) + weight21*P([2],[j]) + b1
        % ���� S ����֮������
        S_hidelayer1 = 1/(1+exp(-hidelayer1));
         % �ڶ�����������Ԫ�����
        hidelayer2 = weight12*P([1],[j]) + weight22*P([2],[j]) + b2
         % ���� S ����֮������
         S_hidelayer2 = 1/(1+exp(-hidelayer2))
        % ������������������
        outlayer = weight1*S_hidelayer1 + weight2*S_hidelayer2 + b

        % �������
        deta =T(j)-outlayer
        % ����������Ȩֵ W1��W2,ƫ��ֵb��������
        change_weight1 = change_weight1 + BP_LEARNING*S_hidelayer1*deta
        change_weight2 = change_weight2 + BP_LEARNING*S_hidelayer2*deta
        change_b = change_b + BP_LEARNING*deta
        % �����������һ����ԪȨֵ��deta1
        deta1 = S_hidelayer1*(1-S_hidelayer1)*weight1*deta
        % ����������ڶ�����ԪȨֵ��deta2
        deta2 = S_hidelayer2*(1-S_hidelayer2)*weight2*deta
         % ����������Ȩֵ W11��W21, W12��W22��ƫ��ֵb1��b2��������
         %  ƫ��ֵb1,b2���������ۼ�
        change_b1 = change_b1 + BP_LEARNING*deta1
        change_b2 = change_b2 + BP_LEARNING*deta2
        %Ȩֵ W11��W21, W12��W22���������ۼ�
        change_weight11 = change_weight11 + BP_LEARNING*P([1],[j])*deta1
        change_weight21 = change_weight21 + BP_LEARNING*P([2],[j])*deta1
        change_weight12 = change_weight12 + BP_LEARNING*P([1],[j])*deta2
        change_weight22 = change_weight22 + BP_LEARNING*P([2],[j])*deta2
         % �ж����
        real_error = real_error + (T(j)-outlayer)*(T(j)-outlayer)
    end;
        % ��ʼ����Ȩֵ
        b1 = b1 + change_b1
        b2 = b2 + change_b2
        b = b + change_b
        weight11 = weight11 + change_weight11
        weight21 = weight21 + change_weight21
        weight12 = weight12 + change_weight12
        weight22 = weight22 + change_weight22
        weight1 = weight1 + change_weight1
        weight2 = weight2 + change_weight2
    if real_error < wish_error
       break;
    end;
end;

%  ��������
for j=1:4;
    hidelayer1 = weight11*P([1],[j]) + weight21*P([2],[j]) + b1;    % ��һ����������Ԫ�����
    S_hidelayer1 = 1/(1+exp(-hidelayer1));      % ���� S ����֮������
    hidelayer2 = weight12*P([1],[j]) + weight22*P([2],[j]) + b2;    % �ڶ�����������Ԫ�����
    S_hidelayer2 = 1/(1+exp(-hidelayer2));      % ���� S ����֮������
    outlayer = weight1*S_hidelayer1 + weight2*S_hidelayer2 + b; % ���������
    result([j]) = outlayer;
end;
clc
real_error,i,result
