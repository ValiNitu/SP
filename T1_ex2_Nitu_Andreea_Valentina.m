%perioada este de 5s, rezolutia temporara de 2ms iar pt 20ms 200ms se inlocuieste pasul cu 0.02 respectiv 0.2
A=0.4; % am pus amplitudinea 0.4 astfel incat sa nu se depaseasca nivelul maxim 1
t1=0:0.002:2.5; % vectorul t1 reprezinta prima jumatate a semnalului cu pasul 0.002
y1=A*t1; % prima dreapta a semnanului ce incepe din 0 pana la 2.5s pe Ox si din 0 in A pe Oy
t2=2.5:0.002:5; % vectorul t2 reprezinta a doua jumatate a semnalului cu pasul 0.002
y2=-A*t2+5*A; %a doua dreapta ce porneste pe Oy din A pana in 0 iar pe Ox sin 2.5 pana 5
y=cat(2,y1,y2); % concatenare y1  y2
t=cat(2,t1,t2); % concatenare t1  t2
plot(t,y)
