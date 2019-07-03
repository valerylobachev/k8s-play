#!/bin/sh

kubectl create -f svc1-controller.yml 
kubectl create -f svc1-service.yml 
kubectl create secret tls svc1-tls-cert --key=svc1-secret/tls.key --cert=svc1-secret/tls.crt
kubectl create -f svc1-ingress.yml 

kubectl create -f svc2-controller.yml 
kubectl create -f svc2-service.yml 
kubectl create secret tls svc2-tls-cert --key=svc2-secret/tls.key --cert=svc2-secret/tls.crt
kubectl create -f svc2-ingress.yml 