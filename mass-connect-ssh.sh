#!/bin/bash

## Author :	Proc3ssor
## Contact :	jeanjestin@gmail.com

arr=()
length=${#arr[@]}

for ((i=0; i<$length; i++))
do
sshpass -p tea4tout ssh -o ConnectTimeout=2 -o StrictHostKeyChecking=no -o GSSAPIAuthentication=no  root@${arr[i]} "hostname" >> host.txt
done

