function [Simbolos] = Alfabeto1(Texto)
%SIM Summary of this function goes here
%   Detailed explanation goes here
    Simbolos = cell2mat(split(unique(Texto),""));
end

