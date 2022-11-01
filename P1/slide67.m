x = linspace(0,2*pi, 100);

sin2 = serieTaylor(x,2);
sin10 = serieTaylor(x,10);
sin15 = serieTaylor(x,15);

plot(x, sin(x), 'r', x, sin2, 'g', x, sin10, 'b', x, sin15, 'y')
%hold on
%plot(x,sin(x))