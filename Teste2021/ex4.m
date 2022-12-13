clear;

T = 1;
Ta = 0.01;
t = 0:Ta:5;

y = (sawtooth(2*pi*t) + 1)/2;
figure(1)
plot(t,y);

[X,f] = Espetro(y,Ta);
figure(2)
plot(f,abs(X))