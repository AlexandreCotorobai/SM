clear;

Ta = 0.2;
t = 0:Ta:5-Ta;
x = sin(2*pi*t);

[y,t1] = ReconstroiSinal(x,Ta);

plot(t1,y, t, x, '.r')