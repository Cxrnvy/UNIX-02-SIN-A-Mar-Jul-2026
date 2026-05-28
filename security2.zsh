#View the actual principal group
id

#View only the principal group name
id -gn 

#Create a file and view which group inherits
touch ~/test_grupo_heredado.txt

#The group is the principal group of the user
ls -la ~/test_grupo_heredado.txt

#View the actual group
echo "Grupo actual: $(id -gn)"

#Create a file before the newgrp
touch ~/antes_de _newgrp.txt
ls -la ~/antes_de_newgrp.txt

#Change the group "desarrolladores"
newgrp desarrolladores

#Verify that the active group changed
id -gn
echo "Nuevo grupo actual: $(id -gn)"

#Create a file inside subshell
touch ~/dentro_de_newgrp.txt
ls -la ~/dentro_de_newgrp.txt

#The group now is "desarrolladores"
#Create a directory
mkdir -p ~/proyecto_dev/src
ls -la ~/
#Exit the newgrp subshell
exit

#Verify that we returned to the original group
id -gn
echo "Grupo restaurado: $(id -gn)"

#Compare both files
ls -la ~/antes_de_newgrp.txt ~/dentro_de_newgrp.txt

#Creating a new group with namme "grupo:restringido"
groupadd grupo_restringido
#Setting a passwd to new group
gpasswd grupo_restringido

#Creating a new user named (cesar)
useradd -m "usuario"
su "usuario" #loggin as "cesar"
    newgrp grupo_restringido #Joining temporary to new group with newgrp with passwd
