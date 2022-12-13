clear;

f1 = 2.5*10;
f2 = 3.5*10;
fo = gcd(f1,f2)/10;
To = 1/fo;
Ta= 0.01; % em segundos, tempo de amostragem
Np = 20;
t = 0:Ta:Np*To-Ta;

y = 8*cos(5*pi*t + pi/4) + 6*sin(7*pi*t - pi/5);

tempo_espetro(y,Ta,fo,Np,0);
tempo_espetro(y,Ta,fo,Np,1);
tempo_espetro(y,Ta,fo,Np,2);
tempo_espetro(y,Ta,fo,Np,3);