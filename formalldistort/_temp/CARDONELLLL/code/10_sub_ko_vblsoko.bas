Attribute VB_Name = "Sub_ko_vblsoko"
Sub ko_vblsoko(Xko(),Yko(),Zko())

dim Z#,T#

for i = 1 to n_ko
T = -(A1*Xko(i)+B1*Yko(i)+C1*Zko(i)+D1)/(A1^2+B1^2+C1^2)
Z = Zko(i)+C1*T
if Z > Zko(i) then: ko_vblwe_cm(i)=-1: goto prblg
if Z = Zko(i) then: ko_vblwe_cm(i)=0: goto prblg
if Z < Zko(i) then: ko_vblwe_cm(i)=1: goto prblg
prblg:
next i

end sub
