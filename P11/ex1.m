clear;
clc;

%% Alinea 1)
[Image, Colormap] = imread("Parede_8bit.bmp");

%% Alinea 2)
Save8bitImage("imgfile", Image);

%% Alinea 3)
[N,M,Img] = Load8bitImage("imgfile");



