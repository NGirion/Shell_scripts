#!/bin/bash

ping_result=$(ping -c 1 google.com 2>&1)

if [[ $ping_result == *"icmp_seq"* ]]; then
   echo "Internet connectivity is up"
else
   echo "Internet connectivity is down"	
fi   
