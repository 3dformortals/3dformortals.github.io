Attribute VB_Name = "sub_poexali"
sub poexali()

do until X_cm>= X_kurs-peredok or PRIEXALI = 1
timemove=timemove+dt

call obnulenie()
rem ��������� ����������� ���������� � ������ ������� �������� ������� �������

call sdvig_mass(X_cm,Y_cm,Z_cm,X_prod,Y_prod,Z_prod,X_pop,Y_pop,Z_pop _
,d_S_o1,d_S_o2,d_S_o3,d_a_o1,d_a_o2,d_a_o3, _
X_ko(),Y_ko(),Z_ko(),znak_P1(),znak_P2(),znak_P3(),pplko_P1(),pplko_P2(),pplko_P3(),S_amo(),PRO_amo(),d_S_ko(),X_op(),Y_op(),Z_op())
rem ����� ���������� ����� ����� ���������� ����� cm,pop,prod ������ ���������� � ���������� ����� (ko) � (op)

call ko_vblsoko(X_ko(),Y_ko(),Z_ko())
rem ����� ���������� ����� ����� �������� ko_vblwe_cm

call povorot_koles(X_cm,Y_cm,Z_cm,X_ko(),Y_ko(),Z_ko(),pplko_P1(),pplko_P2(),pplko_P3(),A_ko(),B_ko(),C_ko(),D_ko())
rem ����� ���������� ����� A_ko,B_ko,C_ko,D_ko ���������� �����

call dots_around(X_ko(),Y_ko(),Z_ko(),A_ko(),B_ko(),C_ko(),R_win())
rem ����� ���������� ����� ����� ������������ �������� ��� ���� �����

call S_kon_ko()
rem ����� ������� �������� ��� ������� ������

call P_kon_ko()
rem ����� �������� �������� ��� ����������...����� ������, � ��������� ��������� �����

call radius_win()
rem ����������� �������������� ������ ����...��������� ��� ������� ���������

call progib_win_rad(X_ko(),Y_ko(),Z_ko(),A_ko(),B_ko(),C_ko(),R_win(),dR_kat(),dPRO_win_rad())
rem ����� ���������� ����� ���������� ������� � ������� ���� �������������� ����� ���� ��� ������ ����

call F_win_rad(X_cm,Y_cm,Z_cm,A_ko(),B_ko(),C_ko(),X_ko(),Y_ko(),Z_ko(),X_op(),Y_op(),Z_op(),pplko_P1(),pplko_P2(),pplko_P3(),dPRO_win_rad(), _
F_win_rad_vert(),F_win_rad_pop(),F_win_rad_prod(), _
M_win_rad_pop(),M_win_rad_prod(),M_win_rad_gor_pop(),M_win_rad_gor_prod(), _
F_win_rad_cm_vert(),F_win_rad_cm_pop(),F_win_rad_cm_prod())
rem ����� �������� ��� � �������� --- �������� ������� ����� ������� ��������

call F_win_bok(X_cm,Y_cm,Z_cm,A_ko(),B_ko(),C_ko(),X_ko(),Y_ko(),Z_ko(),X_op(),Y_op(),Z_op(),pplko_P1(),pplko_P2(),pplko_P3(),dPRO_win_rad(), _
F_win_bok_pop(),F_win_bok_prod(), _
M_win_bok_pop(),M_win_bok_prod(),M_win_bok_gor_pop(),M_win_bok_gor_prod(), _
F_win_bok_cm_vert(),F_win_bok_cm_pop(),F_win_bok_cm_prod())
rem ����� �������� ��� � �������� 

rem ��������� ������ ������ ��� ����������� M_dvi()+

rem ���� ����������� M_dvi()

call F_win_kol()
rem ����� �������� ��� � ��������


loop

end sub
