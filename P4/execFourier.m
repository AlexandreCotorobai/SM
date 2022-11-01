function [x, t] = execFourier(Ta,f0,Np,ak,bk)
    %Inputs > Ta,f0,Np,ak,bk

    T = 1/f0;
    N = round(Np/(f0*Ta));
    
    t = (0:N-1)*Ta;
    W0 = (2*pi)/T;
    x = zeros(1,N);

    for k=1:length(ak)
        x = x + ak(k)*cos(W0*(k-1)*t) + bk(k)*sin(W0*(k-1)*t);
    end

end