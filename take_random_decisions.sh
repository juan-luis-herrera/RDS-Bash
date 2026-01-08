echo "Setting;Old value;New value;meanFPS;meanFPS;meanPower;Time" > $RESULTS_FILE
old_val=$(serviceapi --host $API_HOST configGet confParam=$CONF_PARAM| grep '"value":' | grep -o "[0-9]\{1,\}")
while :
do
    new_val=$(($RANGE_MIN + ($RANDOM % ($RANGE_MAX-$RANGE_MIN))))
    serviceapi --host $API_HOST configChange confParam=$CONF_PARAM value:=$new_val
    sleep $SLEEP_INTERVAL
    meanFPS=$(serviceapi --host $API_HOST sloGet sloId=meanFPS | grep '"value":' | grep -o "[0-9]\{1,\}\.[0-9]\{1,\}")
    meanPower=$(serviceapi --host $API_HOST sloGet sloId=meanPower | grep '"value":' | grep -o "[0-9]\{1,\}\.[0-9]\{1,\}")
    echo "$CONF_PARAM;$old_val;$new_val;$meanFPS;$meanPower;$(date -u +'%Y-%m-%dT%H:%M:%SZ')" >> $RESULTS_FILE
    old_val=$new_val
done