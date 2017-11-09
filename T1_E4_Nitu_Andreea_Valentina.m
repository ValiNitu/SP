%a)
for i=1:1:21 % parcurg componentele vectorului
z(i)=0 % toate componentele sunt 0 initial
z(6)=1 % apoi al 6 lea element este 1
end
subplot(2,1,1) % prima fereastra
n = 0:20 % vectorul n reprezinta axa Ox de la 0 la 20
stem(n,z) % se reprezinta grafic vectorul z in functie de n

subplot(2,1,2) % a doua fereastra
m= -5:15 % vectorul m reprezinta axa Ox de la -5 la 15
stem(m,z) % se reprezinta grafic vectorul z in functie de m

%b)
t=abs(10-n) % modulul lui 10-n
stem(n,t)

%c)in acelasi sistem de coordonate
g=-15:25
x1=sin((pi/17)*g) %calculez sinusul in functie de vectorul g 
h=0:50
x2=cos((pi/sqrt(23))*h) %calculez sinusul in functie de vectorul h 
plot(g,x1,h,x2) % reprezint grafic x1 in functie de g iar x2 in functie de h
% folosind comanda stem
y=cat(2,x1,x2) % am concatenat x1 si x2
i=cat(2,g,h) % am concatenat g si h
stem(i,y)

%c) cu 2 miniferestre
subplot(2,1,1)
plot(g,x1)
stem (g,x1)
subplot(2,1,2)
plot(h,x2)
stem(h,x2)
