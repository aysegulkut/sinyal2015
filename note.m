function [x,t]=note(f,dur);  %frekans� ve t aral���n�n nerede bitece�ini d��ar�dan arg�man olarak al�yoruz.
t=0:1/(100*f):dur; %t aral���n� tan�ml�yoruz.
x=sin(2*pi*f*t); %sin�s sinyalini tan�ml�yoruz.
end