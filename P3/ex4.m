for j = 1:3
    N = 3;
    aArr = [1,1,1];
    fArr = [10,20,30];
    f0 = 10;
    T = 1/f0;
    Ta = 0.001;
    psiArr = rand(1,3)*2*pi-pi;
    t = 0:Ta:T*4;
    x = 0;
    for i = 1:3
        x = x + aArr(i)*sin(2*pi*fArr(i)*t + psiArr(i));
    end

    plot(t,x)
    Potencia(x,Ta,T)
    hold on
end