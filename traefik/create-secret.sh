#!/bin/sh

kubectl -n kube-system create secret tls traefik-cert --key=tls.key --cert=tls.crt