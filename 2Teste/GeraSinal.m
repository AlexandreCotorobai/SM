function [x,t] = GeraSinal(N,Ta)
%GERA Summary of this function goes here
%   Detailed explanation goes here
    fa = 1/Ta;
    t = real((0:N-1)*(1/fa))';
    phi = random('normal',0,pi,N,1);
    phi_i1 = zeros(N,1);
    for n=2:N
        phi_i1(n) = phi_i1(n-1) + (phi(n)+phi(n-1))*Ta/2;
    end
    phi = random('normal',0,pi,N,1);
    phi_i2 = zeros(N,1);
    for n=2:N
        phi_i2(n) = phi_i2(n-1) + (phi(n)+phi(n-1))*Ta/2;
    end

    x = sin(2*pi*t) + 0.5*sin(2*pi*10*t+10*phi_i1) + 0.5*sin(2*pi*12*t+10*phi_i2);
end