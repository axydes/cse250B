function [ grad ] = gradSquareLoss( x, z, top, bottom )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

grad = top/bottom*(x-z);


end

