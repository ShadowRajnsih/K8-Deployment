#!/bin/bash

kubectl create -f deployment_files/voting_app_deployment.yaml >/dev/null
if [ $? -eq 0 ]; then
   echo "Voting app deployment- Successful"
else
   echo "Voting app deployment- Failed" 
fi
kubectl create -f service_files/voting_app_service.yaml
if [ $? -eq 0 ]; then
   echo "Voting app service- Successful"
else
   echo "Voting app service- Failed" 
fi
kubectl create -f deployment_files/redis_deployment.yaml
if [ $? -eq 0 ]; then
   echo "Redis deployment- Successful"
else
   echo "Redis deployment- Failed" 
fi
kubectl create -f service_files/redis_service.yaml
if [ $? -eq 0 ]; then
   echo "Redis service- Successful"
else
   echo "Redis service- Failed" 
fi
kubectl create -f deployment_files/postgres_deployment.yaml
if [ $? -eq 0 ]; then
   echo "Postgres deployment- Successful"
else
   echo "Postgres deployment- Failed" 
fi
kubectl create -f service_files/postgres_service.yaml
if [ $? -eq 0 ]; then
   echo "Postgres Service- Successful"
else
   echo "Postgres Service- Failed" 
fi
kubectl create -f deployment_files/worker_app_deployment.yaml
if [ $? -eq 0 ]; then
   echo "Worker deployment- Successful"
else
   echo "Worker deployment Failed" 
fi
kubectl create -f deployment_files/result_app_deployment.yaml
if [ $? -eq 0 ]; then
   echo "Result App deployment- Successful"
else
   echo "Result App deployment Failed" 
fi
kubectl create -f service_files/result_app_service.yaml
if [ $? -eq 0 ]; then
   echo "Result Service- Successful"
else
   echo "Result Service Failed" 
fi