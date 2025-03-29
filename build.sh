docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID himanship/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID himanship/$JOB_NAME:latest

docker push himanship/$JOB_NAME:$BUILD_ID

docker push himanship/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID himanship/$JOB_NAME:$BUILD_ID himanship/$JOB_NAME:latest
