function resultado = serieTaylor(x,N)
    resultado = zeros(1,length(x));
    for n=1:N
        resultado = resultado + x.^n/factorial(n) * sin(n*pi/2);
    end
end