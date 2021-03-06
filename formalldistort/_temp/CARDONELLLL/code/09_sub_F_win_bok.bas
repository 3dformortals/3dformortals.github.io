Attribute VB_Name = "Sub_F_win_bok"
Sub F_win_bok(Xcm,Ycm,Zcm,Ako(),Bko(),Cko(),Xko(),Yko(),Zko(),Xop(),Yop(),Zop(),p1(),p2(),p3(),dPRO_win_rad(), _
F_win_bok_pop(),F_win_bok_prod(), _
M_win_bok_pop(),M_win_bok_prod(),M_win_bok_gor_pop(),M_win_bok_gor_prod(), _
F_win_bok_cm_vert(),F_win_bok_cm_pop(),F_win_bok_cm_prod())

dim AdS#,BdS#,CdS#,DdS#

for j = 1 to n_ko
if n_dS_kon(j)>0 then
for i = 1 to n_dS_kon(j)

call ABCD_P(dS_kon(1,i,j),dS_kon(2,i,j),dS_kon(3,i,j),dS_kon(4,i,j),dS_kon(5,i,j),dS_kon(6,i,j),dS_kon(7,i,j),dS_kon(8,i,j),dS_kon(9,i,j),AdS,BdS,CdS,DdS)
cos_P_dS_P_ko = abs((AdS*Ako + BdS*Bko + CdS*Cko)/((AdS^2 + BdS^2 + CdS^2)^0.5*(Ako^2 + Bko^2 + Cko^2)^0.5))

cos_L_ko_L_ko_pop = abs((Ako*A2 + Bko*B2 + Cko*C2)/((Ako^2 + Bko^2 + Cko^2)^0.5*(A2^2 + B2^2 + C2^2)^0.5))
cos_L_ko_L_ko_prod = abs((Ako*A3 + Bko*B3 + Cko*C3)/((Ako^2 + Bko^2 + Cko^2)^0.5*(A3^2 + B3^2 + C3^2)^0.5))

dF_win_bok = dPRO_win_rad(i,j)*dS_kon(0,i,j)^2*C_win_rad(j)*cos_P_dS_P_ko*dik8(j)/(R_win(j)-dik0(j))

dF_win_bok_pop = dF_win_bok*cos_L_ko_L_ko_pop*znak_F_bok_pop(dS_kon(11,i,j),AdS,BdS,CdS,Yko(j),Yop(j))
dF_win_bok_prod = dF_win_bok*cos_L_ko_L_ko_prod*znak_F_bok_prod(dS_kon(10,i,j),AdS,BdS,CdS,Xko(j),Xop(j))

F_win_bok_pop(j) = F_win_bok_pop(j)+dF_win_bok_pop
F_win_bok_prod(j) = F_win_bok_prod(j)+dF_win_bok_prod

next i

M_win_bok_pop(j) = F_win_bok_pop(j)*p1*znak_M(1,3,F_win_bok_pop(j),ko_vblwe_cm(j))
M_win_bok_prod(j) = F_win_bok_prod(j)*p1*znak_M(1,2,F_win_bok_prod(j),ko_vblwe_cm(j))
M_win_bok_gor_pop(j) = F_win_bok_pop(j)*p3*znak_M(3,1,F_win_bok_pop(j),ko_do_cm(j))
M_win_bok_gor_prod(j) = F_win_bok_prod(j)*p2*znak_M(2,1,F_win_bok_prod(j),ko_levee_cm(j))

cos_L_ko_cm_L_ko_pop = abs(((Xcm-Xko)*A2 + (Ycm-Yko)*B2 + (Zcm-Zko)*C2)/(((Xcm-Xko)^2 + (Ycm-Yko)^2 + (Zcm-Zko)^2)^0.5*(A2^2 + B2^2 + C2^2)^0.5))
cos_L_ko_cm_L_ko_prod = abs(((Xcm-Xko)*A3 + (Ycm-Yko)*B3 + (Zcm-Zko)*C3)/(((Xcm-Xko)^2 + (Ycm-Yko)^2 + (Zcm-Zko)^2)^0.5*(A3^2 + B3^2 + C3^2)^0.5))

cos_L_ko_cm_L_cm_vert = abs(((Xcm-Xko)*A1 + (Ycm-Yko)*B1 + (Zcm-Zko)*C1)/(((Xcm-Xko)^2 + (Ycm-Yko)^2 + (Zcm-Zko)^2)^0.5*(A1^2 + B1^2 + C1^s2)^0.5))
cos_L_ko_cm_L_cm_pop = abs(((Xcm-Xko)*A2 + (Ycm-Yko)*B2 + (Zcm-Zko)*C2)/(((Xcm-Xko)^2 + (Ycm-Yko)^2 + (Zcm-Zko)^2)^0.5*(A2^2 + B2^2 + C2^2)^0.5))
cos_L_ko_cm_L_cm_prod = abs(((Xcm-Xko)*A3 + (Ycm-Yko)*B3 + (Zcm-Zko)*C3)/(((Xcm-Xko)^2 + (Ycm-Yko)^2 + (Zcm-Zko)^2)^0.5*(A3^2 + B3^2 + C3^2)^0.5))

rem F_win_bok_cm = F_win_bok_pop(j)*cos_L_ko_cm_L_ko_pop+F_win_bok_prod(j)*cos_L_ko_cm_L_ko_prod

F_win_bok_cm_vert(j) = (F_win_bok_pop(j)*cos_L_ko_cm_L_ko_pop*znak_pop_cm(F_win_bok_pop(j),1)+F_win_bok_prod(j)*cos_L_ko_cm_L_ko_prod*znak_prod_cm(F_win_bok_prod(j),1))*cos_L_ko_cm_L_cm_vert
F_win_bok_cm_pop(j) = (F_win_bok_pop(j)*cos_L_ko_cm_L_ko_pop*znak_pop_cm(F_win_bok_pop(j),2)+F_win_bok_prod(j)*cos_L_ko_cm_L_ko_prod*znak_prod_cm(F_win_bok_prod(j),2))*cos_L_ko_cm_L_cm_pop
F_win_bok_cm_prod(j) = (F_win_bok_pop(j)*cos_L_ko_cm_L_ko_pop*znak_pop_cm(F_win_bok_pop(j),3)+F_win_bok_prod(j)*cos_L_ko_cm_L_ko_prod*znak_prod_cm(F_win_bok_prod(j),3))*cos_L_ko_cm_L_cm_prod

end if
next j

end sub

REM сделать жесткость шины как функцию от прогиба
