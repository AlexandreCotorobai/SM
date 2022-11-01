f0_1 = (6*pi) / (2*pi);
f0_2 = (7*pi) / (2*pi);
f0_3 = (8*pi) / (2*pi);

f0 = gcd(f0_1*10,f0_2*10)/10;
f0 = gcd(f0*10, f0_3*10)/10;

T = 1/f0;
Ta = 0.001;
t = 0:Ta:T*4;

y = sin(2*pi*f0_1*t); %sin(2*pi*f0*t)

z = sin(2*pi*f0_2*t); %sin(2*pi*f0*t)

w = sin(2*pi*f0_3*t); %sin(2*pi*f0*t)

p = y + z;

plot(t,y, 'm' , t, z, 'r' , t, p, 'g');
fprintf('Freq: %f \nT: %f \nTa: %f\n', f0, T, Ta);
