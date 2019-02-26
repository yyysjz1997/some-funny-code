function[A,B]=myhilb(n,m)
%���⣺����һ��Hilbert���󣬸þ�����һ��n��m�������ĵ�i��
%��j�е�Ԫ��Ϊ1/(i+j-1)��������ڱ�д�ĺ�����ʵ�����漸�㣺
%1�����ֻ����һ���������������Զ�����һ�����󣬼���m=n
%2������뷵����������A��B���򷵻ص�B����ΪA�����ƽ����
%   ��B=A'A
%3)�ں����и������ʵİ�����Ϣ�������������ܡ����÷�ʽ
%   �Ͳ���˵��

%myhilb ����һ��Hilbert���� 
% [A,B]=myhilb(n,m)
% where
% n,m are size of the Hilbert matrix,if only one
% argument given,then a square matrix is generated
% A is the Hilbert matrix
% B:if two matrices to be returned,B is assigned to
% A'*A
% 2001/12/1
if nargin==1,m=n;end
for i=1:n
   for j=1:m
      A(i,j)=1/(i+j-1);
   end
end
if (nargout==2),B=A'*A;end