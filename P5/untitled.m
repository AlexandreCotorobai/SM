
%% A)
clear all
T = 1;
Ta = 0.01;
np = 2;
N = round(np*T/Ta);
t = (0:N-1)*Ta;
x = sin(2*pi*t);

[X, f] = Espetro(x,Ta);
figure("Name","A) 2 Periodos")
plot(f, abs(X));
[newx, newTa] = Reconstroi(X,f);
figure("Name","4 testing Reconstroi")
plot(t,x)

clear all
T = 1;
Ta = 0.01;
np = 100;
N = round(np*T/Ta);
t = (0:N-1)*Ta;
x = sin(2*pi*t);

[X, f] = Espetro(x,Ta);
figure("Name","A) 100 Periodos")
plot(f, abs(X));

%% B)
clear all

T = 1;
Ta = 0.01;
np = 50;
N = round(np*T/Ta);
t = (0:N-1)*Ta;
x = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t-pi/4);
[X, f] = Espetro(x,Ta);
figure("Name","B) 50 secs")
plot(f, abs(X));

%% C )
clear all

T = 10;
Ta = 0.01;
np = 100;
N = round(np*T/Ta);
t = (0:N-1)*Ta;
x = 10 + 14*cos(20*pi*t - pi/3) + 8*cos(40*pi*t + pi/2);
[X, f] = Espetro(x,Ta);
figure("Name","C) 100 periodos")
plot(f, abs(X));

%% D )
clear all
T = 1;
f = 1;
Np = 5;
Ta = 0.01;
N=round(Np/(f*Ta));
t = (0:N-1)*Ta;
x = square(2*pi*f*t)/2+0.5;
plot(t,x)
[X, f] = Espetro(x,Ta);
figure("Name","ESPETRO QUE QUERO")
plot(f, abs(X));
[newx, newTa] = Reconstroi(X,f);
figure("Name","RECONSTROI Q QUERO")
plot(t,x)
