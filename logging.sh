i=0
while true; 
    do echo "{\"app_name\": \"date-logger\", \"value\": $i, \"time\": \"$(date)\"}" >> /tmp/log/app.log;
    i=$((i+1)); 
    sleep 3;
done