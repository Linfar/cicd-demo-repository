echo "-- app deploy stage started --"
if [ -z "${LOGIN}" ]; then
    echo "##teamcity[message text='LOGIN and PASSWORD environment variables should be set (to any value)' status='FAILURE']"
    exit 1
fi
if [ -z "${PASSWORD}" ]; then
    echo "##teamcity[message text='LOGIN and PASSWORD environment variables should be set (to any value)' status='FAILURE']"
    exit 1
fi
if [ ! -f "app.zip" ]; then
    echo "-- have to rebuild the app (app.zip won't be created) --"
    sleep 5
fi
echo "-- let's pretend deploy is fine --"
echo "-- app deploy stage finished --"
