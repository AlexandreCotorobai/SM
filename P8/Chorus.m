function y = Chorus(x, fs, MaxDelay, NumComp)

    N = length(x);
    y = zeros(N,1);
    for n=1:NumComp
        % CurDelay = random('uniform', 9, MaxDelay,1,1);
        CruDelay = rand(1,1)*MaxDelay;
        dn = max([1 round(CruDelay*fs)]);
        y(dn : end) = y(dn : end) + x(1 : end-dn+1);
    end
    Px = x'*x/N;    % Potência do sinal x.
    Py = y'*y/N;    % Potência do sinal y.
    y = y*sqrt(Px/Py);

end