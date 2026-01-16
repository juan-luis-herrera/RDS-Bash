echo "Setting;Old value;New value;$CONF_PARAM;meanPower;Time" > $RESULTS_FILE
old_val=$(serviceapi --host $API_HOST configGet confParam=$CONF_PARAM| grep '"value":' | grep -o "[0-9]\{1,\}")

if [ -n "$NTFY_REPORT" ]; then
curl -d "Starting RDS" $NTFY_REPORT
fi

if [[ -n "$NUM_STEPS" ]]; then
    FINITE=true
else
    FINITE=false
    NUM_STEPS=1
fi

steps_taken=0

while [[ $NUM_STEPS -gt $steps_taken ]]; do
    new_val=$(($RANGE_MIN + ($RANDOM % ($RANGE_MAX-$RANGE_MIN))))
    serviceapi --host $API_HOST configChange confParam=$CONF_PARAM value:=$new_val
    sleep $SLEEP_INTERVAL
    param_val=$(serviceapi --host $API_HOST sloGet sloId=$CONF_PARAM | grep '"value":' | grep -o "[0-9]\{1,\}\.[0-9]\{1,\}")
    meanPower=$(serviceapi --host $API_HOST sloGet sloId=meanPower | grep '"value":' | grep -o "[0-9]\{1,\}\.[0-9]\{1,\}")
    echo "$CONF_PARAM;$old_val;$new_val;$param_val;$meanPower;$(date -u +'%Y-%m-%dT%H:%M:%SZ')" >> $RESULTS_FILE
    old_val=$new_val
    if [[ $FINITE = true ]]; then
        let steps_taken++
    fi
done

if [ -n "$NTFY_REPORT" ]; then
curl -d "Starting RDS" $NTFY_REPORT
fi