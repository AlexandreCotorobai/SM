function [ak,bk] = execcoef(Ta,T,x,k)
    
    %N = round(Np/(f0*Ta));
    
    W0 = (2*pi)/T;

    ak=zeros(k,1);
    bk=zeros(k,1);
    k= [0:k-1]';
    
    for i=1:length(x)
        ak = ak + 2/length(x) * x(i) *cos(W0*k*i*Ta);
        bk = bk + 2/length(x) * x(i) *sin(W0*k*i*Ta);
    end


end