#!/bin/bash

kubectl create -f deployment_files/voting_app_deployment.yaml
kubectl create -f service_files/voting_app_service.yaml

kubectl create -f deployment_files/redis_deployment.yaml
kubectl create -f service_files/redis_service.yaml

kubectl create -f deployment_files/postgres_deployment.yaml
kubectl create -f service_files/postgres_service.yaml

kubectl create -f deployment_files/worker_app_deployment.yaml

kubectl create -f deployment_files/result_app_deployment.yaml
kubectl create -f service_files/result_app_service.yaml