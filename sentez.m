
%% De�i�kenleri tan�mlama
Fs=3192;
gecikme=round(Fs/10);
duraklama=zeros(1,round(Fs/100));
notalar=[];
duraklama=[];
%% oktav de�erinin de�i�imi (-1 ise 1 oktav azalt, 1 ise 1 oktav artt�r.
oktdegis=3;
%% notalar� dosyadan okuma
dosya=fopen('notalar.txt','r');
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',',');
fclose(dosya);
f=zeros(1,length(nota));
%% farkl� oktavlarda �alabilmek i�in
if oktdegis~=0
    for okt=1:length(oktav)
        oktav(okt)=oktav(okt)+oktdegis; 
    end
end
%% notalar matrisi olu�umu
for i=1:length(nota)
    f(i)=frek(nota{i},oktav(i)); %frek fonsiyonu cag�r�larak frekans degerleri hesapland�. 
    [sindalga,t]=note(f(i),str2num(olcu{i})); %note fonksiyonu cag�r�larakta sin sinyalleri cizildi.
    notalar=[notalar sindalga duraklama]; 
end  
%% echo olu�umu
for j=1:length(notalar)
    if (j+gecikme)<length(notalar)
        notalar(j+gecikme)=notalar(j+gecikme)+0.3*notalar(j); 
    end
end
%% normalize etme
notalar = notalar /max(abs(notalar));
%% grafiksel g�r�n�m
plot(notalar)
%% frekanslar� sesli olarak duymak i�in
sound(notalar,Fs)