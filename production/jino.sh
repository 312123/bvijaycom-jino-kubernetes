#!/bin/bash
docker build -t jinoj/httpd:latest jinoj/jinoj:$SHA
kubectl apply -f .
kubectl set image deployments/nginx server=[container originname]
