FILE=memory-usage-log.txt
MAX_PROCESSES=11 #amount of processes to show +1 (Header line)
echo "System Information:" >> $FILE;
cat /proc/meminfo >> $FILE;
cat /proc/cpuinfo >> $FILE;

echo "Starting logging.." >> $FILE;
while true;
    do
        ps -e eo pid,%cpu,%mem,vsz,uname,args --sort=-vsz | head -n $MAX_PROCESSES >> $FILE
        sleep 5;
        echo "----------------------------------------------" >> $FILE;

    done
