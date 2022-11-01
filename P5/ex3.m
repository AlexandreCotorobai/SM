%% Alinea a)
Ta = 0.01;
T = 100;
N = T/Ta;
t = (0:N-1)*Ta;

x = sin(2*pi*t);

[X,f] = Espetro(x,Ta);

figure(1)
stem(f,abs(X));

%% Alinea b)
Ta = 0.01;
T = 1;
np = 50;
N = T*np/Ta;
t = (0:N-1)*Ta;

x = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);

[X,f] = Espetro(x,Ta);

figure(2)
stem(f,abs(X));



