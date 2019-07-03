#!/bin/bash


for i in {1..100} 
  do
    curl http://localhost:8081 |grep Answ >> result.txt
  done 
