#View the actual principal group
id

#View only the principal group name
id -gn 

#Create a file and view which group inherits
touch ~/test_grupo_heredado.txt

#The group is the principal group of the user
ls -la ~/test_grupo_heredado.txt

