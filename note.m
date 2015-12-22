function [x,t]=note(f,vurus); 
fs=8192;
t=0:1/(0.01*(fs*vurus)):vurus-(1/fs); 

x1=sin(2*pi*f*t*2/8);
x2=sin(2*pi*f*t*1/8);
x3=sin(2*pi*f*t*4/8);
x4=sin(2*pi*f*t*1/8);
x5=sin(-2*pi*f*t*2/8);
x6=sin(-2*pi*f*t*1/8);
x7=sin(-2*pi*f*t*4/8);
x8=sin(-2*pi*f*t*1/8);
x=x1+x2+x3+x4+x5+x6+x7+x8; 

end