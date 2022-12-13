clear;


%% Alinea 1)

Ta = 0.00001;
N = 1e6;

[x, t] = GeraSinal(N,Ta);

figure(1)
plot(t,x)

xlim([0,5]);

%% Alinea 2)

[X,f] = Espetro(x,Ta);

figure(2)
plot(f,abs(X))
xlim([-50,50])
ylim([0,0.6])

%% Alinea 3)
newX = Filter(X,f,[0 5]);
figure(5)
plot(f,abs(newX));
xlim([-50,50])
ylim([0,0.6])

[reconX, reconT] = Reconstroi(newX, f);
figure(3)
plot(t,x,'b',reconT,real(reconX),'r')