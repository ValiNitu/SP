%rezolutia temporara de 2ms iar pt 20ms 200ms se inlocuieste pasul cu 0.02 respectiv 0.2
A=1.5 % amplitudinea
o=2*pi*(1/4); % omega calculat cu T=4s perioada
t1=0:0.002:2; % prima jumatate a semnalului 
v1= A*sin(o*t1); % se calculeaza sinusul in functie de vectorul t1
t2=2:0.002:4; % a doua parte a semnalului
v2= A*-sin(o*t2); % se calculeaza sinusul in functie de vectorul t2 cu semnul - pt a aparea deasupra axei Ox
t=cat(2,t1,t2); % se concateneaza t1 si t2
v=cat(2,v1,v2); % se concateneaza v1 si v2
plot(t,v)
axis([0 4 0 1.5]) %axa Ox sa fie reprezentata de la 0 la 4 iar Oy de la 0 la 1.5
