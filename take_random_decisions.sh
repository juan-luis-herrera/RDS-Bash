echo "Setting;Old value;New value;Time" > $RESULTS_FILE
old_val=$(serviceapi --host $API_HOST configValue confParam=$CONF_PARAM)
while :
do
    new_val=$(($RANGE_MIN + $RANDOM % $RANGE_MAX))
    echo $new_val | serviceapi --host $API_HOST configChange confParam=$CONF_PARAM -
    echo "$CONF_PARAM;$old_val;$new_val;$(date -u +'%Y-%m-%dT%H:%M:%SZ')" >> $RESULTS_FILE
    old_val=$new_val
    sleep $SLEEP_INTERVAL
done