#!/usr/bin/env bash

for i in {1..15}; do OUT=""; 
if [ "$(docker run centos:7 expr $i % 3)" -eq "0" ]; 
then OUT="${OUT}fizz"; 
fi; 
if [ "$(docker run centos:7 expr $i % 5)" -eq "0" ]; 
then OUT="${OUT}buzz"; 
fi; 
if [ -z "$OUT" ]; 
then OUT=$i; 
fi; 
echo $OUT; 
done