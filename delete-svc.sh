#!/bin/sh

kubectl delete -f svc1-controller.yml 
kubectl delete -f svc1-service.yml 
kubectl delete -f svc1-ingress.yml 
kubectl delete secret tls svc1-tls-cert 

kubectl delete -f svc2-controller.yml 
kubectl delete -f svc2-service.yml 
kubectl delete -f svc2-ingress.yml 
kubectl delete secret tls svc2-tls-cert 