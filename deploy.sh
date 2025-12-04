echo "-- app deploy stage started --"
if [[ -z "${LOGIN}" || -z "${PASSWORD}"  ]]; then
    echo "##teamcity[message text='LOGIN and PASSWORD environment variables should be set (to any value)' status='FAILURE']"
    exit 1
fi
sleep 5
echo "-- let's pretend deploy is fine --"
sleep 5
echo "-- app deploy stage finished --"
