%rezolutia temporara de 2ms iar pt 20ms 200ms se inlocuieste pasul cu 0.02 respectiv 0.2
a = [-1 1 ] % nivelurile
al = a(randperm(length(a))); %vectorul al ce ordoneaza aleator vectorul a
t1=0:0.002:0.25;; % pt primul nivel durata este de 0.25
v1=al(1)*ones(1,length(t1)); % se creaza matricea de o linie si lungimea vectorului t1 coloane ce se inmulteste cu primul element al vectorului aleator al
t2=0.25:0.002:0.5; % al doilea nivel incepand din 0.25, de durata 0.25 se termina in 0.5
v2=al(2)*ones(1,length(t2)); %se creaza matricea de o linie si lungimea vectorului t2 coloane ce se inmulteste cu al doilea element al vectorului aleator al
t=cat(2,t1,t2); % se concateneaza t1 si t2
v=cat(2,v1,v2); % se concateneaza v1 si v2
plot(t,v);
axis([0 0.5 -2 2]) %axa Ox sa fie reprezentata de la 0 la 0.5 iar Oy de la -2 la 2


a = [-3 -1 1 3]
al = a(randperm(length(a)))
t1=0:0.002:0.25;;
v1=al(1)*ones(1,length(t1));
t2=0.25:0.002:0.5;
v2=al(2)*ones(1,length(t2));
t3=0.5:0.002:0.75;
v3=al(3)*ones(1,length(t3));
t4=0.75:0.002:1;
v4=al(4)*ones(1,length(t4));
t=cat(2,t1,t2,t3,t4);
v=cat(2,v1,v2,v3,v4);
plot(t,v);
axis([0 1 -4 4])


a=[-5,-3,-1,1,3,5]
al = a(randperm(length(a)));
t1=0:0.002:0.25;;
v1=al(1)*ones(1,length(t1));
t2=0.25:0.002:0.5;
v2=al(2)*ones(1,length(t2));
t3=0.5:0.002:0.75;
v3=al(3)*ones(1,length(t3));
t4=0.75:0.002:1;
v4=al(4)*ones(1,length(t4));
t5=1:0.002:1.25;
v5=al(5)*ones(1,length(t5));
t8=1.25:0.002:1.50;
v6=al(6)*ones(1,length(t6));
t=cat(2,t1,t2,t3,t4,t5,t6);
v=cat(2,v1,v2,v3,v4,v5,v6);
plot(t,v);
axis([0 1.5 -6 6])

a=[-7,-5,-3,-1,1,3,5,7]
al = a(randperm(length(a)))
t1=0:0.002:0.25;;
v1=al(1)*ones(1,length(t1));
t2=0.25:0.002:0.5;
v2=al(2)*ones(1,length(t2));
t3=0.5:0.002:0.75;
v3=al(3)*ones(1,length(t3));
t4=0.75:0.002:1;
v4=al(4)*ones(1,length(t4));
t5=1:0.002:1.25;
v5=al(5)*ones(1,length(t5));
t6=1.25:0.002:1.50;
v6=al(6)*ones(1,length(t6));
t7=1.5:0.002:1.75;
v7=al(7)*ones(1,length(t7));
t8=1.75:0.002:2;
v8=al(8)*ones(1,length(t8));
t=cat(2,t1,t2,t3,t4,t5,t6,t7,t8);
v=cat(2,v1,v2,v3,v4,v5,v6,v7,v8);
plot(t,v);
axis([0 2 -8 9])
