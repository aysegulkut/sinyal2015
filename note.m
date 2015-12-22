function [x,t]=note(frekans,vurus) 
Fs=8192; %örnekleme frekansı
t=0:1/Fs:((0.25-(1/Fs))/2); %t aralığını tanımladık.
z=0; %z yi (zarf) 0 a eşitledim.
   x=sin(2*pi*frekans*t); %çizdirdiğim sinyali x e atadım
if length(x)==length(z)   %eğer x ve z nin lengthleri eşitse birbirine 
       z=[linspace(0,1.5,Fs*vurus*(2/8)),linspace(1.5,1,Fs*vurus*(1/8)),linspace(1,1,Fs*vurus*(4/8)),linspace(1,0,Fs*vurus*(1/8))];%zarf değerlerinin matrisini oluşturdum.
end
end
