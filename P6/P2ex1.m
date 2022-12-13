%% Ex1 - nbits=2
clear;

Ta=0.01;
t=[0:Ta:2-Ta];
length(t)
x=sin(2*pi*t);

A = 1; %Amplitude
Vfs = 2*A; %Aceita que doi menos
nbits = 2;
delta = Vfs/2^nbits;

partition = [-A+delta:delta:A-delta];
codebook = [-A+delta/2:delta:A-delta/2];

[index, quants]=quantiz(x, partition, codebook);

figure("Name","Quantização n=2");
subplot(1,3,1)
plot(t,x,t,quants)
title('Quantização do sinal, nbit=2')
xlabel('Tempo')
ylabel('y(t)')
legend('Sinal Original','Sinal quantizado');

[X,f]=Espetro(quants,Ta);
[X_og,f_og]=Espetro(x,Ta);
%figure("Name","Espetro n=2")
subplot(1,3,2)
plot(f,abs(X), f_og, abs(X_og))
title('Espetro quantização, nbit=2')
xlabel('Frequencia')
ylabel('Amplitude')
legend('Espetro quantização, nbit=2', 'Espetro original');

[y,t2] = ReconstroiSinal(quants, Ta);
subplot(1,3,3)
plot(t2, y , t, x)
title('Reconstrução sinal quantizado, nbit=2')
xlabel('tempo')
ylabel('y(t)')
legend('Sinal Reconstruido, nbit=2', 'Sinal original');

%% Ex1 - nbits=3
clear;

Ta=0.01;
t=[0:Ta:2-Ta];
x=sin(2*pi*t);

A = 1; %Amplitude
Vfs = 2*A; %Aceita que doi menos
nbits = 3;
delta = Vfs/2^nbits;

partition = [-A+delta:delta:A-delta];
codebook = [-A+delta/2:delta:A-delta/2];

[index, quants]=quantiz(x, partition, codebook);

figure("Name","Quantização n=3");
subplot(1,3,1)
plot(t,x,t,quants)
title('Quantização do sinal, nbit=3')
xlabel('Tempo')
ylabel('y(t)')
legend('Sinal Original','Sinal quantizado');

[X,f]=Espetro(quants,Ta);
[X_og,f_og]=Espetro(x,Ta);
%figure("Name","Espetro n=3")
subplot(1,3,2)
plot(f,abs(X), f_og, abs(X_og))
title('Espetro quantização, nbit=3')
xlabel('Frequencia')
ylabel('Amplitude')
legend('Espetro quantização, nbit=3', 'Espetro original');

[y,t2] = ReconstroiSinal(quants, Ta);
subplot(1,3,3)
plot(t2, y , t, x)
title('Reconstrução sinal quantizado, nbit=3')
xlabel('tempo')
ylabel('y(t)')
legend('Sinal Reconstruido, nbit=3', 'Sinal original');

%% Ex1 - nbits=4
clear;

Ta=0.01;
t=[0:Ta:2-Ta];
x=sin(2*pi*t);

A = 1; %Amplitude
Vfs = 2*A; %Aceita que doi menos
nbits = 4;
delta = Vfs/2^nbits;

partition = [-A+delta:delta:A-delta];
codebook = [-A+delta/2:delta:A-delta/2];

[index, quants]=quantiz(x, partition, codebook);

figure("Name","Quantização n=4");
subplot(1,3,1)
plot(t,x,t,quants)
title('Quantização do sinal, nbit=4')
xlabel('Tempo')
ylabel('y(t)')
legend('Sinal Original','Sinal quantizado');


[X,f]=Espetro(quants,Ta);
[X_og,f_og]=Espetro(x,Ta);
%figure("Name","Espetro n=4")
subplot(1,3,2)
plot(f,abs(X), f_og, abs(X_og))
title('Espetro quantização, nbit=4')
xlabel('Frequencia')
ylabel('Amplitude')
legend('Espetro quantização, nbit=4', 'Espetro original');

[y,t2] = ReconstroiSinal(quants, Ta);
subplot(1,3,3)
plot(t2, y , t, x)
title('Reconstrução sinal quantizado, nbit=4')
xlabel('tempo')
ylabel('y(t)')
legend('Sinal Reconstruido, nbit=4', 'Sinal original');
