echo "-- app test stage started --"
if [ ! -f "app.zip" ]; then
    echo "-- have to rebuild the app (app.zip won't be created) --"
    sleep 5
fi
sleep 3
echo "##teamcity[testStarted name='test1']"
echo "##teamcity[testFinished name='test1' duration='1000']"
sleep 2
echo "##teamcity[testStarted name='test2']"
echo "##teamcity[testFinished name='test2' duration='1000']"
sleep 2
echo "##teamcity[testStarted name='test3']"
if [[ -z "${SHOULD_BE_SET_ENV_VAR}"  ]]; then
    echo "##teamcity[testStdErr name='test3' out='SHOULD_BE_SET_ENV_VAR environment variable should be set to any value']"
    echo "##teamcity[testFailed name='test3' message='SHOULD_BE_SET_ENV_VAR environment variable should be set to any value' details='SHOULD_BE_SET_ENV_VAR environment variable should be set to any value']"
fi
echo "##teamcity[testFinished name='test3' duration='1000']"
sleep 2
echo "##teamcity[testStarted name='test4']"
echo "##teamcity[testFinished name='test4' duration='1000']"
sleep 3
echo "-- app test stage finished --"
