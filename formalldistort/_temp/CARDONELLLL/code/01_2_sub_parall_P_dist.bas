Attribute VB_Name = "Sub_parall_P_dist"
Sub parall_P_dist(X,Y,Z,A,B,C,znak,POLE,XD,YD,ZD,DX,DY,DZ)
dim S#,T#
XD=X
YD=Y
ZD=Z
S=1/POLE
do while ((XD-X)^2+(YD-Y)^2+(ZD-Z)^2)^0.5 < 1
T= S*znak/B
XD = X + T*A
YD = Y + T*B
ZD = Z + T*C
S=S+1/POLE
loop
DX=XD-X
DY=YD-Y
DZ=ZD-Z

end sub

REM X,Y,Z - ���������� ����� ������ ���� ������
REM A,B,C - ������������ ������������� ������� ����������
REM XD,YD,ZD - ������� ���������� ����� ������������ ��������� �� ���������
REM DX,DY,DZ - ���������� ������ �������� �������� ��������� ����� ����������, ����� ���������
REM znak - ����������� ��������� Y ��� ������ ����� ����� ��������� (1||-1)
