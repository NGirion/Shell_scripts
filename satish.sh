#!/bin/bash

# Infinite loop

while true; do
	echo "Hello Satish" |  tee -a /root/sample_script.log 2>&1
	sleep 5
done
