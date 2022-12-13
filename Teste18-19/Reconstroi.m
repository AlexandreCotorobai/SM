function [x,Ta] = Reconstroi(X,f)
%RECONSTROI Summary of this function goes here
%   Detailed explanation goes here
    N = length(X);
    Ta = f(N)*2;
    x = ifft(ifftshift(X))*N;
end