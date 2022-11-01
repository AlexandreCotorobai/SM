clear;

T = 1;
f = 1;
Np = 7;
Ta = 0.001;
N=round(Np/(f*Ta));
t = [0: (N-1)]'*Ta;
y = sawtooth(t*2*pi*f+pi/2,1/2);
subplot(1,2,1)
plot(t,y)
[ak, bk] = execcoef(Ta,T,y,100);

[xfour, tfour] = execFourier(Ta,f,Np,ak,bk);
subplot(1,2,2)
plot(tfour,xfour)