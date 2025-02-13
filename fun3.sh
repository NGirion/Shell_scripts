#!/bin/bash

greet() {
	echo "Welcome, $1 !. The system is up and running"
}	

check_diskspace() {
	df -h /
}

check_cpu_usage() {
	top -bn1 | grep "Cpu(s)"

}

# main program
greet "Admin"
check_diskspace
check_cpu_usage
