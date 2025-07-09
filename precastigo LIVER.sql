select

case
when PK1.ORG = '100' then substr(PK1.CUENTA,1,9) ||''||'******'||''|| substr(PK1.CUENTA,16,4)
when PK1.ORG = '110' then substr(PK1.CUENTA,1,11) ||''||'****'||''|| substr(PK1.CUENTA,16,4)
else '0'
end as CUENTA,

PK1.GRUPO, PK1.CUENTA,

PK4.NOMBRE, PK1.STATUS_INI, PK1.SALDO, PK1.CORTE, PK1.B1, PK1.B2, PK2.ULT_PAGO, PK1.DMLABEL6,

case
when PK1.DMLABEL6 = '0010' then 'Xalapa'
when PK1.DMLABEL6 = '0011' then 'Córdoba'
when PK1.DMLABEL6 = '0014' then 'Tuxtla'
when PK1.DMLABEL6 = '0016' then 'Coatzacoalcos'

when PK1.DMLABEL6 = '0017' then 'Poza Rica'
when PK1.DMLABEL6 = '0019' then 'Tapachula'
when PK1.DMLABEL6 = '0021' then 'Villahermosa'
when PK1.DMLABEL6 = '0027' then 'Acapulco'
when PK1.DMLABEL6 = '0031' then 'Monterrey'
when PK1.DMLABEL6 = '0035' then 'Ciudad Juárez'
when PK1.DMLABEL6 = '0036' then 'San Luís Potosí'
when PK1.DMLABEL6 = '0037' then 'Oaxaca'
when PK1.DMLABEL6 = '0041' then 'Tampico'
when PK1.DMLABEL6 = '0042' then 'Chihuahua'
when PK1.DMLABEL6 = '0043' then 'Torreón'
when PK1.DMLABEL6 = '0044' then 'Querétaro'
when PK1.DMLABEL6 = '0046' then 'Culiacán'
when PK1.DMLABEL6 = '0047' then 'Irapuato'
when PK1.DMLABEL6 = '0050' then 'Hermosillo'
when PK1.DMLABEL6 = '0051' then 'Guadalajara'
when PK1.DMLABEL6 = '0054' then 'Tepic'
when PK1.DMLABEL6 = '0057' then 'Morelia'
when PK1.DMLABEL6 = '0058' then 'Aguascalientes'
when PK1.DMLABEL6 = '0060' then 'Ciudad Obregón'
when PK1.DMLABEL6 = '0062' then 'Puerto Vallarta'
when PK1.DMLABEL6 = '0065' then 'Saltillo'
when PK1.DMLABEL6 = '0071' then 'León'
when PK1.DMLABEL6 = '0072' then 'Puebla'
when PK1.DMLABEL6 = '0073' then 'Veracruz'
when PK1.DMLABEL6 = '0075' then 'Cancún'
when PK1.DMLABEL6 = '0076' then 'Mérida'
when PK1.DMLABEL6 = '0079' then 'Chetumal'
when PK1.DMLABEL6 = '0084' then 'Colima'
when PK1.DMLABEL6 = '0089' then 'Durango'
when PK1.DMLABEL6 = '0102' then 'Campeche'
when PK1.DMLABEL6 = '0105' then 'Celaya'
when PK1.DMLABEL6 = '0121' then 'Orizaba'
when PK1.DMLABEL6 = '0126' then 'Ciudad Victoria'
when PK1.DMLABEL6 = '0127' then 'Zacatecas'
when PK1.DMLABEL6 = '0169' then 'Tuxpan'
when PK1.DMLABEL6 = '0178' then 'Zamora'
when PK1.DMLABEL6 = '0177' then 'Tlaxcala'
when PK1.DMLABEL6 = '0300' then 'Tehuacán'
when PK1.DMLABEL6 = '0302' then 'San Miguel De Allende'
when PK1.DMLABEL6 = '0303' then 'Chilpancingo'
when PK1.DMLABEL6 = '0304' then 'Ciudad Del Carmen'
when PK1.DMLABEL6 = '0305' then 'Los Mochis'
when PK1.DMLABEL6 = '0307' then 'Playa Del Carmen'
when PK1.DMLABEL6 = '0308' then 'La Paz'
when PK1.DMLABEL6 = '0310' then 'Istmo'
when PK1.DMLABEL6 = '0311' then 'San Juan Del Rio'
when PK1.DMLABEL6 = '0312' then 'Mexicali'
when PK1.DMLABEL6 = '0388' then 'Tuxtepec'
when PK1.DMLABEL6 = '0471' then 'Fresnillo'
when PK1.DMLABEL6 = '0141' then 'Uriangato'
when PK1.DMLABEL6 = '141' then 'Uriangato'
when PK1.DMLABEL6 = '0161' then 'Tijuana'
when PK1.DMLABEL6 = '161' then 'Tijuana'
when PK1.DMLABEL6 = '0192' then 'Cuautla'
when PK1.DMLABEL6 = '192' then 'Cuautla'
when PK1.DMLABEL6 = '0194' then 'Salamanca'
when PK1.DMLABEL6 = '194' then 'Salamanca'
when PK1.DMLABEL6 = '0468' then 'Monclova'
when PK1.DMLABEL6 = '468' then 'Monclova'
when PK1.DMLABEL6 = '047' then 'Irapuato'
when PK1.DMLABEL6 = '454' then 'Guanajuato'
when PK1.DMLABEL6 = '0454' then 'Guanajuato'
when PK1.DMLABEL6 in ('A055','B055','C055') then 'Mazatlán'
when PK1.DMLABEL6 = 'CP00' then 'Metropolitano'
when PK1.DMLABEL6 = 'B051' then 'Guadalajara'
when PK1.DMLABEL6 = 'M051' then 'Guadalajara'
when PK1.DMLABEL6 = 'A051' then 'Guadalajara'
when PK1.DMLABEL6 = 'C051' then 'Guadalajara'
when PK1.DMLABEL6 = 'D051' then 'Guadalajara'
when PK1.DMLABEL6 = 'E051' then 'Guadalajara'
when PK1.DMLABEL6 in ('M001','M002','M003','M004','M005','M006','M007','M008','M009','M010','M011','M012','M013','M014','M015','M016','M017','M018','M019','M020','M021','M022','M023') then 'Metropolitano'
when PK1.DMLABEL6 = 'M048' then 'Pachuca'
when PK1.DMLABEL6 = 'M074' then 'Toluca'
when PK1.DMLABEL6 = 'M077' then 'Cuernavaca'
when PK1.DMLABEL6 = '0472' then 'Comitán'
else 'nulo' end as PLAZA, 
nvl(PK1.AGENCIA,'Sin Agencia') as Agencia, PK1.ORG, PK1.LOGO, PK4.FCH_ULT_ACT, PK4.ULT_ACC, PK4.ULT_RES, PK3.IMPORTE, nvl(PK3.IMPORTE/PK1.SALDO,0) as PCT, PK2.STATUS_FIN, 

case
when PK2.STATUS_FIN = '0' then to_char(PK1.SALDO)
when PK2.STATUS_FIN = '1' and PK1.CORTE <= '17'  then to_char(PK1.SALDO)---modificar corte
else '0' end as EVITADO, 

PK2.B2, PK1.TDA_APERTURA

from


(select DMACCTG as GRUPO, DMACCT as CUENTA, U6CHGOFFSTAT as STATUS_INI, DMCURBAL as SALDO, U6BILLCYCLE as CORTE, U6BLOCKCODE1 as B1, U6BLOCKCODE2 as B2, DMPAYDT as ULT_PAGO, DMLABEL6, DMAGENCY as AGENCIA, U6ORG as ORG, U6LOGO as LOGO, DMBRANCH as TDA_APERTURA
from RCVRY.DELQUDA_BEGIN
where trunc(BEGINDT) = '01/jun/2025'
and (U6CHGOFFSTAT = '2' or (U6CHGOFFSTAT = '1' and U6BILLCYCLE <= '28'))
and DMCURBAL > '0'
and U6ORG in ('110','100')
order by 1) PK1

LEFT OUTER JOIN

(select DMACCT as CUENTA, U6CHGOFFSTAT as STATUS_FIN, U6BLOCKCODE2 as B2, DMPAYDT as ULT_PAGO
from RCVRY.DELQMST, RCVRY.UDA6
where DMACCT in (select DMACCT
                from RCVRY.DELQUDA_BEGIN
                where trunc(BEGINDT) = '01/jun/2025'
                and (U6CHGOFFSTAT = '2' or (U6CHGOFFSTAT = '1' and U6BILLCYCLE <= '28'))
                and DMCURBAL > '0')
and DMACCTG = U6ACCTG
and DMACCT = U6ACCT) PK2

ON PK1.CUENTA = PK2.CUENTA
LEFT OUTER JOIN

(select PMACCT as CUENTA, count(distinct PMACCT) as PAGOS, sum(PMTAMT) as IMPORTE
from RCVRY.PMTFIL
where trunc(PMEDATE) >= '01/jun/2025' and trunc(PMEDATE) <= '30/jun/2025'
and PMACCT in (select DMACCT
                from RCVRY.DELQUDA_BEGIN
                where trunc(BEGINDT) = '01/jun/2025'
                and (U6CHGOFFSTAT = '2' or (U6CHGOFFSTAT = '1' and U6BILLCYCLE <= '28'))
--and U6ORG = '110'
                and DMCURBAL > '0')
group by PMACCT) PK3

ON PK1.CUENTA = PK3.CUENTA
LEFT OUTER JOIN

(select DMACCT as CUENTA, DMNAME as NOMBRE, DMLSTACT as FCH_ULT_ACT, DMLASTAC as ULT_ACC, DMLASTRC as ULT_RES
from RCVRY.DELQMST
where DMACCTG = '6'
and DMACCT in (select DMACCT
                from RCVRY.DELQUDA_BEGIN
                where trunc(BEGINDT) = '01/jun/2025'
                and (U6CHGOFFSTAT = '2' or (U6CHGOFFSTAT = '1' and U6BILLCYCLE <= '28'))
--and U6ORG = '110'
                and DMCURBAL > '0')) PK4

ON PK1.CUENTA = PK4.CUENTA