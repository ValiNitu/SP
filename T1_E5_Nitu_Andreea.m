F = 50;
t = 0:0.001:0.2;
s = 2*sin(2*pi*F*t);

% perioada este de 0.02 pt pasul de variatie 0.001 si 0.0002
%pt pasul 0.01 exista mai putine puncte pe grafic astfel acesta este
%inprecis iar pt pasul 0.0002 punctele sunt apropiate unele de altele
%astfel graficul este foarte precis
F2=20;
c = 2*cos(2*pi*F2*t);
plot(t,s,t,c)