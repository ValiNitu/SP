%rezolutia temporara de 2ms iar pt 20ms 200ms se inlocuieste pasul cu 0.02 respectiv 0.2
A=0.8 % amplitudinea
o=2*pi*(1/3) % omega calculat cu T=3s perioada
t1=0:0.002:1.5 % prima jumatate a semnalului 
v1= A*sin(o*t1); % se calculeaza sinusul in functie de vectorul t1
t2=1.5:0.002:3 % a doua parte a semnalului
v2=zeros(1,length(t2)) % se creaza matricea de 0 cu o linie si lungimea vectorului t2 coloane
t=cat(2,t1,t2) % se concateneaza t1 si t2
v=cat(2,v1,v2) % se concateneaza v1 si v2
plot(t,v)
