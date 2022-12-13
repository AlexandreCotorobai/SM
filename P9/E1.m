clear all

mensagem = 'AABCABABAAABBCABCAAC';
convertCharsToStrings(cell2mat(split(unique(mensagem),"")))
%Simb1 = Alfabeto1(mensagem);

%[Simb2, Freq2] = Alfabeto2(mensagem);

%NumeroBits(mensagem)

H = Entropia(mensagem);