# mass-connect-ssh
Ce script bash permet à un pentesteur de tester (sur un nombre illimité de serveurs) la validité des identifiants et mots de passe. 

1 - Paquets à installer : sshpass
      Ubuntu : sudo apt install sshpass
      CentOS : yum install sshpass
      
2 - Modifier les variables
      user="utilisateur_a_tester" (changer la valeur de cette variable et y insérer le nom d'utilisateur à tester)
      mdp="mot_de_passe_a_tester" (changer la valeur de cette variable et y insérer le mot de passe à tester)
      
3 - Ajouter les serveurs à tester
      Ajouter la liste de serveur à tester dans le tableau arr=()
      
5 - Résultats
      Les résultats sont stockés dans le fichier host.txt
      
6 - Exemple
