function[] = tempo_espetro(y,Ta,Fo,Np,T_F)
    t = 0:Ta:1/Fo*Np-Ta;
    fa= 1/Ta;
    N= length(y);
    Y= fftshift(fft(y))/N;
    f= (0:N-1)*(fa/N)-(fa/2); 
    if(T_F == 0)
        figure("Name","TF=0, Representação no tempo")
        plot(t,y);
        grid on
        xlabel("Tempo(seg)")
        ylabel("y(t)")
    elseif(T_F == 1) 
        figure("Name","TF=1, Representação na frequencia")
        plot(f,abs(Y));
        grid on
        xlabel("Frequencia(Hz)")
        ylabel("Magnitude")
    elseif(T_F == 2)
        figure("Name","TF=2, Representação no tempo")
        plot(t,y);
        grid on
        xlabel("Tempo(seg)")
        ylabel("y(t)")
        figure("Name","TF=2, Representação na frequencia")
        plot(f,abs(Y));
        grid on
        xlabel("Frequencia(Hz)")
        ylabel("Magnitude")
    else
        disp("T_F deverá ter valores de 0, 1 e 2.");
    end

end