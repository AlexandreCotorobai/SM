%% Alinea a)
Ta = 0.01;
T = 1;
np = 2;
N = round(np*T/Ta);
t = (0:N-1)*Ta;

x = sin(2*pi*t);

figure("Name","Grafico Base")
plot(t,x);

[X,f] = Espetro(x,Ta);

figure("Name","Grafico Espetral")
stem(f,abs(X));

figure("Name","Grafico Reconstruido")
[newX, newTa] = Reconstroi(X, f);
newt = (0:N-1)*newTa;
plot(newt,newX);

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



