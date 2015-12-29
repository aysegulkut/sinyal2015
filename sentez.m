fs=8192; %örnekleme frekansını tanımladım
duraklama=fs*(1/100); %duraklama tanımladım
oktav_degeri=0; %oktav degerinde degisiklik olmama durumu.
oktavdegis=0; %oktav'a eklenmek istenen deger oktdegis degiskeniyle eklenecek[-1,+1].
notalar={}; %notalar dizisi oluşturdum
dosya=fopen('notalar.txt'); %notalar.txt dosyasını okumak açar.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %notalar.txt deki değerleri okur
fclose(dosya);%dosyayı kapatır.

if oktav_degeri~=oktavdegis %oktdegis degiskeninde degisiklik yapılması durumunda islenecek sart. 
    for j=1:length(oktav) %text'ten cekilen oktav degerleri dongu icerisinde degistirilecek.
        oktav(j)=oktav(j)+oktavdegis; %oktavı arttırır
    end
end

for i=1:length(nota)
f=frek(nota{i},oktav(i)); %notalar.txt deki notaların frekanslarını hesaplar
[topla,t]=note(f,olcu{i}); %frekans ve olcuye göre sinyal oluşturur.
t=0:1/fs:olcu{i}-(1/fs); %t aralığı tanımladım.
notalar{i}=f; %notalar dizisinin ilk elemanına frekans
notalar{i+1}=duraklama; %ikinci elemanına duraklama süresini atadım.
plot(t,f,t,duraklama) %frekans ve duraklama süresini çizdirdim.
plot(t,f,t,echo,t,duraklama) %frekans, echo ve duraklama süresini çizdirdim.
sound(echo)%ses çalmak için
end
