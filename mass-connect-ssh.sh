#!/bin/bash

## Author :	Proc3ssor
## Contact :	jeanjestin@gmail.com

arr=()
length=${#arr[@]}
user="utilisateur_a_tester"
mdp="mot_de_pass_a_tester"

for ((i=0; i<$length; i++))
do
sshpass -p $mdp ssh -o ConnectTimeout=1 -o StrictHostKeyChecking=no -o GSSAPIAuthentication=no  $user@${arr[i]} "hostname" >> host.txt
done

