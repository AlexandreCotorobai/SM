clear;
N = 10000;
Ta = 0.001;
f0 = 1;

t = 0:Ta:N*Ta-1;

phi = random("normal", 0, pi, N, 1);
phi_i1 = zeros(N,1);
for n=2:N
    phi_i1(n) = phi_i1(n-1) + (phi(n)+phi(n-1))*Ta/2;
end

r = 0.5*sin(20*pi*t + 10)

x = sin(2*pi*f0*t) + r(t)


