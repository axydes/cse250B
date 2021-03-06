%square loss functions
disp('Checking Square Loss');
x=rand(20,1);
z=rand(20,1);
num=2;
denom=4;
alpha=0.1;
r=checkgrad2(@costSqLoss,x,{z,num,denom,alpha});
r=checkgrad2(@costSqLoss,x,{z,1,1,alpha});
%assert abs(r-1)<1e-10;

%h functions
disp('Checking H functions');
r=checkgrad2(@costH,rand*10,{});

%sigmoid functions
disp('Checking Sigmoid functions');
r=checkgrad2(@costSigmoid,rand*10,{});

%log loss functions
disp('Checking Log Loss');
l = [1,0];
p = rand;
%r=checkgrad2(@costLogLoss,l,{[p,1-p]});
%assert abs(r-1)<1e-10;

% r=checkgrad2(@costLogLoss,0,{0.9, alpha});
% r=checkgrad2(@costLogLoss,1,{0.1, alpha});
% r=checkgrad2(@costLogLoss,0,{0.1, alpha});
% r=checkgrad2(@costLogLoss,1,{0.9, alpha});
% r=checkgrad2(@costLogLoss,0,{0.5, alpha});
% r=checkgrad2(@costLogLoss,1,{0.5, alpha});
r=checkgrad2(@costLogLoss,0,{rand, alpha});
r=checkgrad2(@costLogLoss,1,{rand, alpha});

%prediction functions
disp('Checking Prediction functions');
V = -1 + (1+1)*rand(1,20);
x = rand(20,1);
t = 1;
r=checkgrad2(@costPredict,t,{x, V, alpha});