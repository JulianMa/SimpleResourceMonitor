FILE=memory-usage-actual.txt
while true;
    do
        ps eo pid,%cpu,%mem,args,uname --sort=-%mem >> $FILE;
        echo "----------" >> $FILE;
        sleep 1;
    done
