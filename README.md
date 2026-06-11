# cicd-demo-repository

This is a stub project repository to test CI/CD tools. 

It contains 3 stages: build, test, deploy.

To build the app, run `sh build.sh`. Build stage produces the "app.zip" file which can be passed to the test and deploy stages to speed them up. 

To test the app, run `sh test.sh`. If "app.zip" doesn't exist in the directory, test stage runs longer.

To deploy the app, set LOGIN and PASSWORD environment variables and run `sh deploy.sh`. If "app.zip" doesn't exist in the directory, deploy stage runs longer.
