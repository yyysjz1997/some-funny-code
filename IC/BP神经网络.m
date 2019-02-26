%   BP神经网络解决异或问题
%   采用的一个2-2-1的网络
clear
clc
BP_LEARNING = 0.1;  %   学习速率为0.1
wish_error = 0.0002;  %   期望误差
studytimes = 20000;  %   定义最大学习次数
result=zeros(1,4);   %   生成一个矩阵，存放最后的输出结果
P = [0 0 1 1;
    0 1 0 1];
T = [0 1 1 0];
%   初始化神经网络隐含层的权值和域值
%   根据权值下标，例如weight12表示第一个输入对隐含层第二个神经元的权值
weight11 = rands(1)
weight21 = rands(1)
weight12 = rands(1)
weight22 = rands(1)
b1 = rands(1)
b2 = rands(1)

%   初始化输出层的权值和域值
weight1 = rands(1)
weight2 = rands(1)
b = rands(1)
pause
%   开始训练网络
for i=1:studytimes;
    real_error = 0;
    %   初始化中间变量：修改权值的变量的累加值
    change_b1=0;change_b2=0;change_b=0;
    change_weight11=0;change_weight21=0;change_weight12=0;change_weight22=0;
    change_weight1=0;change_weight2=0;
    for j=1:4;
        %% 前向计算
         % 第一个隐含层神经元的输出
        hidelayer1 = weight11*P([1],[j]) + weight21*P([2],[j]) + b1
        % 经过 S 函数之后的输出
        S_hidelayer1 = 1/(1+exp(-hidelayer1));
         % 第二个隐含层神经元的输出
        hidelayer2 = weight12*P([1],[j]) + weight22*P([2],[j]) + b2
         % 经过 S 函数之后的输出
         S_hidelayer2 = 1/(1+exp(-hidelayer2))
        % 输出层的输出－线性输出
        outlayer = weight1*S_hidelayer1 + weight2*S_hidelayer2 + b

        % 计算误差
        deta =T(j)-outlayer
        % 计算输出层加权值 W1，W2,偏置值b的修正量
        change_weight1 = change_weight1 + BP_LEARNING*S_hidelayer1*deta
        change_weight2 = change_weight2 + BP_LEARNING*S_hidelayer2*deta
        change_b = change_b + BP_LEARNING*deta
        % 计算隐含层第一个神经元权值的deta1
        deta1 = S_hidelayer1*(1-S_hidelayer1)*weight1*deta
        % 计算隐含层第二个神经元权值的deta2
        deta2 = S_hidelayer2*(1-S_hidelayer2)*weight2*deta
         % 计算输出层加权值 W11，W21, W12，W22，偏置值b1，b2的修正量
         %  偏置值b1,b2修正量的累加
        change_b1 = change_b1 + BP_LEARNING*deta1
        change_b2 = change_b2 + BP_LEARNING*deta2
        %权值 W11，W21, W12，W22修正量的累加
        change_weight11 = change_weight11 + BP_LEARNING*P([1],[j])*deta1
        change_weight21 = change_weight21 + BP_LEARNING*P([2],[j])*deta1
        change_weight12 = change_weight12 + BP_LEARNING*P([1],[j])*deta2
        change_weight22 = change_weight22 + BP_LEARNING*P([2],[j])*deta2
         % 判断误差
        real_error = real_error + (T(j)-outlayer)*(T(j)-outlayer)
    end;
        % 开始调整权值
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

%  输出最后结果
for j=1:4;
    hidelayer1 = weight11*P([1],[j]) + weight21*P([2],[j]) + b1;    % 第一个隐含层神经元的输出
    S_hidelayer1 = 1/(1+exp(-hidelayer1));      % 经过 S 函数之后的输出
    hidelayer2 = weight12*P([1],[j]) + weight22*P([2],[j]) + b2;    % 第二个隐含层神经元的输出
    S_hidelayer2 = 1/(1+exp(-hidelayer2));      % 经过 S 函数之后的输出
    outlayer = weight1*S_hidelayer1 + weight2*S_hidelayer2 + b; % 输出层的输出
    result([j]) = outlayer;
end;
clc
real_error,i,result
