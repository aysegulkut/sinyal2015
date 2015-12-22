[x,y]=note(50,1/8)
plot(y,x)%zarfı plot ile çizdirir

z1=[linspace(0,1.5,8192*(1/8)*(2/8)),linspace(1.5,1,8192*(1/8)*(1/8)),linspace(1,1,8192*(1/8)*(4/8)),linspace(1,0,8192*(1/8)*(1/8))]
   plot(y,z1)%zarfın pozitif kısmını çizdirir.
    
z2=[linspace(0,-1.5,8192*(1/8)*(2/8)),linspace(-1.5,-1,8192*(1/8)*(1/8)),linspace(-1,-1,8192*(1/8)*(4/8)),linspace(-1,0,8192*(1/8)*(1/8))]
plot(y,z2)%zarfın negatif kısmını çizdirir.

z3=z1.*z2 %z1 ile z2 matrisinin çarpımını z3 e atadım.
carp=x.*z3 %x ile z3 çarpımını carp değişkenine atadım.
plot(y,carp)%zarflanmış sinyali oluşturdum.
