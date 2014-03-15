function [ obj,dx ] = costPredict( t, x, V, alpha )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
    %t = [ti; 1-ti];
    p = predictNode(x, V);
    obj = (1-alpha)*logLoss(t, p);
    %dx = gradSigmoid(p);
    dx = gradPredict(t,p,alpha);
    %dx = dxs(1);
end
