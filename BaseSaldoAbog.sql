select 
    DELQMST.DMACCT, 
    RCVRY.UDA6.U6BLOCKCODE1, 
    RCVRY.UDA6.U6BLOCKCODE2, 
    DELQMST.DMCURBAL, 
    DELQMST.DMBRANCH, 
    DELQMST.DMPAYDT, 
    DELQMST.DMAGENCY, 
    DELQMST.DMQUE3, 
    DELQMST.DMQUE4, 
    RCVRY.UDA6.U6SALDOABO 
from 
    RCVRY.UDA6, 
    RCVRY.DELQMST 
where 
    ((DELQMST.DMACCTG = '6') and ((DELQMST.DMSTATUS IS NULL) or( DELQMST.DMSTATUS = 'W')) 
        and 
        (
            DELQMST.DMCURBAL = .0
        ) 
        and 
        (
            RCVRY.UDA6.U6ACCTG = '6'
        ) 
        and 
        (
            RCVRY.UDA6.U6BLOCKCODE1 IN 
            (
                'A', 
                'K'
            )
        ) 
        and 
        (
            RCVRY.UDA6.U6SALDOABO <> .0
        )
    ) 
    and 
    DELQMST.DMACCT = RCVRY.UDA6.U6ACCT
