function [ff]= frek(nota,oktav)
notalar=['A','a','B','b','C','D','d','E','e','F','f','G'];%notalarý bir matrise atýyoruz tüm notalarý ayný boyutta olacak þekilde.
%A=Do, a=Do#, B=Re, b=Re#, C=Mi, D=Fa, d=Fa#, E=Sol, e=Sol#, F=La, f=La#, G=Si
p=length(notalar);%matristeki notalarýn sayýsý
referans=16.35;%referans olarak belirlenen frekans
    for okt=0:8 %her oktavda notalarý hesaplamak için for döngüsü kulandým.
        if okt==oktav %eðer döngüden gelen oktav deðeri istenen oktav deðerine eþitse
            for j=1:p%dizideki notalarýn indexlerini döndüren for döngüsü
                if nota==char(notalar(j))%argüman olarak girilen nota adý dizinin j.elemanýyla ayný ise
                ff=2^okt*(2^((j-1)/12)*referans) %frenkans hesaplanýr
                end  
            end
        end
    end
end
