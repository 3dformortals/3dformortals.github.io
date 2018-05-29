Attribute VB_Name = "function_znak_vert_cm"
function znak_vert_cm(sila,directrez)

select case ko_do_cm
case -1 
    select case ko_levee_cm
    case -1 
        select case op_vblwe_cm
    case -1: cm_vert = 1: cm_pop = 1: cm_prod = 1
    case 0: cm_vert = 0: cm_pop = 0: cm_prod = 0
    case 1: cm_vert = 1: cm_pop = -1: cm_prod = -1
        end select
    case 0 
        select case op_vblwe_cm
    case -1: cm_vert = 1: cm_pop = 0: cm_prod = 1
    case 0: cm_vert = 0: cm_pop = 0: cm_prod = 0
    case 1: cm_vert = 1: cm_pop = 0: cm_prod = -1
        end select
    case 1 
        select case op_vblwe_cm
    case -1: cm_vert = 1: cm_pop = -1: cm_prod = 1
    case 0: cm_vert = 0: cm_pop = 0: cm_prod = 0
    case 1: cm_vert = 1: cm_pop = 1: cm_prod = -1
        end select
    end select
case 0 
    select case ko_levee_cm
    case -1 
        select case op_vblwe_cm
    case -1: cm_vert = 1: cm_pop = 1: cm_prod = 0
    case 0: cm_vert = 0: cm_pop = 0: cm_prod = 0
    case 1: cm_vert = 1: cm_pop = -1: cm_prod = 0
        end select
    case 0 
        select case op_vblwe_cm
    case -1: cm_vert = 1: cm_pop = 0: cm_prod = 0
    case 0: cm_vert = 1: cm_pop = 0: cm_prod = 0
    case 1: cm_vert = 1: cm_pop = 0: cm_prod = 0
        end select
    case 1 
        select case op_vblwe_cm
    case -1: cm_vert = 1: cm_pop = -1: cm_prod = 0
    case 0: cm_vert = 0: cm_pop = 0: cm_prod = 0
    case 1: cm_vert = 1: cm_pop = 1: cm_prod = 0
        end select
    end select
case 1 
    select case ko_levee_cm
    case -1 
        select case op_vblwe_cm
    case -1: cm_vert = 1: cm_pop = 1: cm_prod = -1
    case 0: cm_vert = 0: cm_pop = 0: cm_prod = 0
    case 1: cm_vert = 1: cm_pop = -1: cm_prod = 1
        end select
    case 0 
        select case op_vblwe_cm
    case -1: cm_vert = 1: cm_pop = 0: cm_prod = -1
    case 0: cm_vert = 0: cm_pop = 0: cm_prod = 0
    case 1: cm_vert = 1: cm_pop = 0: cm_prod = 1
        end select
    case 1 
        select case op_vblwe_cm
    case -1: cm_vert = 1: cm_pop = -1: cm_prod = -1
    case 0: cm_vert = 0: cm_pop = 0: cm_prod = 0
    case 1: cm_vert = 1: cm_pop = 1: cm_prod = 1
        end select
    end select
end select

if sila < 0 then cm_vert = cm_vert*(-1): cm_pop = cm_pop *(-1): cm_prod = cm_prod *(-1)

select case directrez
case 1: znak_vert_cm = cm_vert
case 2: znak_vert_cm = cm_pop
case 3: znak_vert_cm = cm_prod
end select

end function

REM дает знаки трех составляющих от проекции вертикальной составляющей на направление от (ko) до (cm)
REM directrez - ось направления проекции после разложения на три
