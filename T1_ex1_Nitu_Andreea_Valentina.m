t=0:0.002:2 % perioada este de 2s, rezolutia temporara de 2ms iar pt 20ms 200ms se inlocuieste pasul cu 0.02 respectiv 0.2
v1=A*ones(1,length(t)*0.25) % se genereaza o matrice de 1 cu o linie si lungimea vectorului t ori factorul de umplere coloane
v2=zeros(1,length(t)*1/25) %se genereaza o matrice de 0 cu o linie si lungimea vectorului t ori 1/factorul de umplere coloane
v=cat(2,v1,v2) % concatenarea vectorilor v1 si v2
plot(t,v)

