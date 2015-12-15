function [ff]= frek(nota,oktav)
notalar=['A','a','B','b','C','D','d','E','e','F','f','G'];%notalar� bir matrise at�yoruz t�m notalar� ayn� boyutta olacak �ekilde.
%A=Do, a=Do#, B=Re, b=Re#, C=Mi, D=Fa, d=Fa#, E=Sol, e=Sol#, F=La, f=La#, G=Si
p=length(notalar);%matristeki notalar�n say�s�
referans=16.35;%referans olarak belirlenen frekans
    for okt=0:8 %her oktavda notalar� hesaplamak i�in for d�ng�s� kuland�m.
        if okt==oktav %e�er d�ng�den gelen oktav de�eri istenen oktav de�erine e�itse
            for j=1:p%dizideki notalar�n indexlerini d�nd�ren for d�ng�s�
                if nota==char(notalar(j))%arg�man olarak girilen nota ad� dizinin j.eleman�yla ayn� ise
                ff=2^okt*(2^((j-1)/12)*referans) %frenkans hesaplan�r
                end  
            end
        end
    end
end
