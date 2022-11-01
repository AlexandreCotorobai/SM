f0 = (20*pi) / (2*pi);
T = 1/f0;
Ta = 0.001;
t = 0:Ta:T*4;
y = sin(2*pi*f0*t + 70 * pi / 180 ); %sin(2*pi*f0*t)

f0 = (20*pi) / (2*pi);
T = 1/f0;
Ta = 0.001;
t = 0:Ta:T*4;
z = sin(2*pi*f0*t + 200*pi/180); %sin(2*pi*f0*t)

p = y + z;

plot(t,y, 'm' , t, z, 'r' , t, p, 'g');
fprintf('Freq: %f \nT: %f \nTa: %f\n', f0, T, Ta);
