
%% Deðiþkenleri tanýmlama
Fs=3192;
gecikme=round(Fs/10);
duraklama=zeros(1,round(Fs/100));
notalar=[];
duraklama=[];
%% oktav deðerinin deðiþimi (-1 ise 1 oktav azalt, 1 ise 1 oktav arttýr.
oktdegis=3;
%% notalarý dosyadan okuma
dosya=fopen('notalar.txt','r');
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',',');
fclose(dosya);
f=zeros(1,length(nota));
%% farklý oktavlarda çalabilmek için
if oktdegis~=0
    for okt=1:length(oktav)
        oktav(okt)=oktav(okt)+oktdegis; 
    end
end
%% notalar matrisi oluþumu
for i=1:length(nota)
    f(i)=frek(nota{i},oktav(i)); %frek fonsiyonu cagýrýlarak frekans degerleri hesaplandý. 
    [sindalga,t]=note(f(i),str2num(olcu{i})); %note fonksiyonu cagýrýlarakta sin sinyalleri cizildi.
    notalar=[notalar sindalga duraklama]; 
end  
%% echo oluþumu
for j=1:length(notalar)
    if (j+gecikme)<length(notalar)
        notalar(j+gecikme)=notalar(j+gecikme)+0.3*notalar(j); 
    end
end
%% normalize etme
notalar = notalar /max(abs(notalar));
%% grafiksel görünüm
plot(notalar)
%% frekanslarý sesli olarak duymak için
sound(notalar,Fs)