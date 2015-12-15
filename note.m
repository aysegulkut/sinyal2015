function [x,t]=note(f,dur);  %frekansý ve t aralýðýnýn nerede biteceðini dýþarýdan argüman olarak alýyoruz.
t=0:1/(100*f):dur; %t aralýðýný tanýmlýyoruz.
x=sin(2*pi*f*t); %sinüs sinyalini tanýmlýyoruz.
end