f0 = (10*pi) / (2*pi);
T = 1/f0;
Ta = 0.01;
t = 0:Ta:T*4;
y = sin(2*pi*f0*t + pi/2); %sin(2*pi*f0*t)

plot(t,y)

fprintf('Freq: %f \nT: %f \nTa: %f\n', f0, T, Ta);
