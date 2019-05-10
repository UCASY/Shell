#!/bin/bash
#---------------------------------------------------------------
# THE FUNCTION OF THIS SHELL is to Automatically download 
# data using wget, solved the problem of date spanning month.
#                                              UCAS_Y
#---------------------------------------------------------------
export START_DATE="20190101"            #START_DATE(YYYYMMDD)
export END_DATE="20190301"              #END_DATE(YYYYMMDD)
#s_date=`date -d "2019-01-01" +%Y%m%d`  # Start date
#e_date=`date -d "2019-03-01" +%Y%m%d`  # End date
START_S=`date +%s -d $START_DATE`       # Start date in second
END_S=`date +%s -d $END_DATE`           # End date in second

Dload_start=${START_S}	
Dload_end=${END_S}

while [ "${Dload_start}" -le "${Dload_end}" ];do
    statDate=`date -d @${Dload_start} +"%Y%j"`
    Dload_start=$((Dload_start+86400))
    echo $statDate
    #wget -c ...........................
done

exit
