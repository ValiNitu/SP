
function [ m,p,x ] = E3( c ) % parametrul de iesire este c, parametrii de intrare sunt m,p,x
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
a=linspace(1,20,6) % generez un vector cu 6 elemente incepand de la 1 pana la 20
b=linspace(3,18,6) % generez un vector tot cu 6 elemente incepand de la 3 pana la 18
c=complex(a,b) % creez vectorul cu elemente complexe ce are ca parte reala vectorul a iar ca parte imaginara vectorul b
% am folosit linspace pt a putea alege acelasi numar de elemente pt vectorii a si b pt a putea folosi functia complex
r=real(c); % extrage partea reala a nr complexe din vectorul c
m=mean(r) % calculez media aritmetica a partilor reale
p=c.^2 % ridic la patrat componentele vectorul initial c
t=c.'; % calculez transpusa vectorului c
x=c*t % se face inmultirea vectorului c cu transpusul lui
end

