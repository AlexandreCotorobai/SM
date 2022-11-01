T = 1;
Ta = 0.05;
t = 0:Ta:5;

y = sawtooth(2*pi*t+pi/2,0.5);
figure(1)
plot(t,y);

[X,f] = Espetro(y,Ta);
figure(2)
plot(f,abs(X))