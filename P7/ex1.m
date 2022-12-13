clear;

load Guitar03.mat

%% Alinea 1)
%sound(x,fa);

%% Alinea 2)
[X, f] = Espetro(x,1/fa);

figure(1);
plot(f, abs(X))
xlabel("Frequencia (Hz)")
ylabel("Magnitude")
legend("Espetro")

xlim([-4000 4000]);

%% Alinea 3)

%Filtrar sinal
N = length(f);
H = zeros(1,N);

fminimo = 600;
fmaximo = 1200;

H(f>fminimo & f<fmaximo) = 1;
H(f>-fmaximo & f<-fminimo) = 1;

figure(2);
plot(f, H)
xlim([-4000 4000]);
xlabel("Frequencia (Hz)")
ylabel("Filtragem")
legend("Filtragem")

xx = H.*X';
figure(3)
plot(f,abs(xx))
xlim([-4000 4000]);
xlabel("Frequencia (Hz)")
ylabel("Amplitude")
legend("Grafico filtrado")

%Reconstruir
[y, newT] = Reconstroi(xx, f);
%t = 0:Ta:N*Ta-1;

figure(4)
plot(newT,y);
xlabel("Tempo (s)")
ylabel("y(t)")
legend("Grafico reconstruido")

sound(real(y),fa);
