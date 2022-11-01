Ta = 0.01;
T = 3;
N = T/Ta;
t = (0:N-1)*Ta;
x = 10 + 14*cos(20*pi*t - pi/3) + 8*cos(40*pi*t + pi/2);


[X,f] = Espetro(x,Ta);

stem(f,abs(X));
