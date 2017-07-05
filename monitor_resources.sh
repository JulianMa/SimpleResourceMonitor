FILE=memory-usage-log.txt
MAX_PROCESSES=11 #amount of processes to show +1 (Header line)
while true;
    do
        ps -e eo pid,%cpu,%mem,uname,args --sort=-%mem | head -n $MAX_PROCESSES >> $FILE
        echo "----------------------------------------------" >> $FILE;
        sleep 5;
    done
