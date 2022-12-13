clear;

load("Guitar01.mat")
sound(x,fa)


[X, f] = Espetro(x,1/fa);
N = length(X);
filter_x = Filter(f,N,[488.91, 488.93]);
xf = filter_x.*X';
[w,t] = Reconstroi(xf,f);
w = real(w);
sound(w,fa);
plot(real(t(1:250)), w(1:250))
