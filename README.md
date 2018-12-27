# mass-connect-ssh
Ce script bash permet à un pentesteur de tester une paire identifiant/mdp sur un nombre illimité de serveurs. Ce script peut être exécuté dans le cadre d'un pentest. Quand un serveur est compromis, qu'un mot de passe et un identifiant sont découverts, il se peut que ces identifiants soient identiques sur d'autres serveurs.
Ce script permet donc d'automatiser des connexions ssh sur plusieurs serveurs.

1 - Paquets à installer : sshpass

   Ubuntu :
   
      sudo apt install sshpass
   
   CentOS :
   
      yum install sshpass
      
2 - Modifier les variables

      user="utilisateur_a_tester" (changer la valeur de cette variable et y insérer le nom d'utilisateur à tester)
      mdp="mot_de_passe_a_tester" (changer la valeur de cette variable et y insérer le mot de passe à tester)
      
3 - Ajouter les serveurs à tester dans le tableau arr=()
      
5 - Les résultats sont stockés dans le fichier host.txt
      
6 - Exemple

    ./mass-connect-ssh.sh
    
      #!/bin/bash

      ## Author :	Proc3ssor
      ## Contact : jeanjestin@gmail.com

      arr=(
      serveur1.com
      serveur2.com
      serveur3.net
      exemple.net
      )
      length=${#arr[@]}
      user="root"
      mdp="12345"

      for ((i=0; i<$length; i++))
      do
      sshpass -p $mdp ssh -o ConnectTimeout=1 -o StrictHostKeyChecking=no -o GSSAPIAuthentication=no  $user@${arr[i]} "hostname" >> host.txt
      done

   host.txt
   
    serveur2.com
    exemple.net

Les serveurs "serveur2.com" et "exemple.net" ont pour identifiant de connexion : root/12345
