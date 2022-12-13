clear;

Ta = 0.04;
t = 0:Ta:5-Ta;
x = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t -pi/4);

[y,t1] = ReconstroiSinal(x,Ta);

plot(t1,y, t, x, '.r')