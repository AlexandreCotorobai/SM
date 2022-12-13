clear;

Ta= 0.01;
fo = 4;
Np = 10;
To = 1/fo;

%N= round(Np*To/Ta);
t = 0:Ta:Np*To-Ta;

z = 2*square(2*pi*t*fo);
tempo_espetro(z,Ta,fo,Np,0);
tempo_espetro(z,Ta,fo,Np,1);
tempo_espetro(z,Ta,fo,Np,2);
tempo_espetro(z,Ta,fo,Np,3);
