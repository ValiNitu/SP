P=40; %perioada [sec]
D=15; %durata semnal [sec]
N=50; %numarul de coeficienti
w0 = 2*pi/P; %pulsatia unghiulara a semnalului
td=0:0.05:D; 
xd=ones(1,length(td)); 
t = 0:0.05:P;
x = zeros(1,length(t));
x(t<=D) = xd; %semnalul dreptunghiular original


for k = -N:N %k este variabila dupa care se realizeaza suma
    xdr = xd; %xdr e semnalul realizat dupa formula SF data
    xdr = xdr .* exp(-1i*k*w0*td); 
    X(k+N+1) = 0; %initializare cu valoare nula
    for i = 1:length(td)-1
        X(k+N+1) = X(k+N+1) + (td(i+1)-td(i)) * (xdr(i)+xdr(i+1))/2; %reconstructia folosind coeficientii
    end
end

for i = 1:length(t) %i este variabila dupa care se realizeaza suma
    xf(i) = 0; %initializare cu valoare nula
    for k=-N:N
        xf(i) = xf(i) + (1/P) * X(k+51) * exp(1i*k*w0*t(i));  %reconstructia semnalului folosind coeficientii
    end
end

figure(1);
plot(t,x); hold on; %afisare semnal initial
plot(t,xf) ; %afisare semnal reconstruit

figure(2);
ts=-50*w0:w0:50*w0; %vectorul ts permite afisarea spectrului functiei
stem(ts,abs(X)); %afisare spectru


%Conform cursului de SS orice semnal periodic poate fi aproximat printr-o suma infinita de sinusuri
%si cosinusuri de diferite frecvente, fiecare ponderat cu un anumit coeficient. 
%Coeficientii reprezinta spectrul de aplitudine (amplitudinea pentru anumite frecvente).
%Semnalul reconstruit foloseste un numar finit de termeni si se apropie ca
%forma de semnalul original, daca numarul coeficientilor este mai mare
%semnalul reconstruit va semana mai mult cu cel initial.
