f0_1 = (6*pi) / (2*pi);
f0_2 = (8*pi) / (2*pi);
f0 = gcd(f0_1,f0_2);

T = 1/f0;
Ta = 0.001;
t = 0:Ta:T*4;
y = sin(2*pi*f0_1*t); %sin(2*pi*f0*t)


T = 1/f0;
Ta = 0.001;
t = 0:Ta:T*4;
z = sin(2*pi*f0_2*t); %sin(2*pi*f0*t)

p = y + z;

plot(t,y, 'm' , t, z, 'r' , t, p, 'g');
fprintf('Freq: %f \nT: %f \nTa: %f\n', f0, T, Ta);
