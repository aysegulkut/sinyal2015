function [x,t]=note(f,olcu) 
fs=8192; %örnekleme frekansý
a=1;
topla=0;
harmonik={1 0.8 0.4 0.1}; % harmonik dizisi
t=0:1/fs:olcu-(1/fs); %t aralýðý

for h=1:length(harmonik)
   x=harmonik{h}*sin(2*pi*f*t*a); %harmonik hesabý
   topla=topla+x;%harmonikleri topluyorum
   a=a+1;
end
   z1=linspace(0,1.5,length(t)/4);
   z2=linspace(1.5,1,length(t)/8);
   z3=linspace(1,1,length(t)/2);
   z4=linspace(1,0,length(t)/8);
   zarf=[z1 z2 z3 z4];
   x=topla.*zarf; %harmonikli halini zarfladým
end