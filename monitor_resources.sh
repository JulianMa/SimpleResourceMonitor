FILE=memory-usage-log.txt
while true;
    do
        ps -u jenkins eo pid,%cpu,%mem,args,uname --sort=-%mem >> $FILE;
        echo "----------" >> $FILE;
        sleep 1;
    done
