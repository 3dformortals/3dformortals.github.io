Attribute VB_Name = "Sub_ppl"
Sub ppl(X(),Y(),Z(),p1(),p2(),p3())

for i = 1 to n_ko
p3(i) = abs(A3*X(i) + B3*Y(i) + C3*Z(i) + D3)/(A3^2 + B3^2 + C3^2)^0.5
p2(i) = abs(A2*X(i) + B2*Y(i) + C2*Z(i) + D2)/(A2^2 + B2^2 + C2^2)^0.5
p1(i) = abs(A1*X(i) + B1*Y(i) + C1*Z(i) + D1)/(A1^2 + B1^2 + C1^2)^0.5
next i

end sub

REM p1,p2,p3 ������ ppl
REM i ����� �����
