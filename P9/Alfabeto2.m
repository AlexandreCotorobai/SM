function [Simbolos,Frequencia] = Alfabeto2(Texto)
%ALFABETO2 Summary of this function goes here
%   Detailed explanation goes here
    Simbolos = cell2mat(split(unique(Texto),""));
    for i = 1:length(Simbolos)
        Frequencia(i) = count(Texto,convertCharsToStrings(Simbolos(i)))/length(Texto);
    end
 
end

