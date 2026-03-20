uname -a #Daba informacion del ordenador (arquitectura, SO)
which gpg #Brinda la ubicacion del binario del GPG
gpg --version #Da la versión e info adicional
gpg --full-generate-key #Permite generar la llave publica y privada
gpg --list-keys #Enlista las llaves
gpg --armor --export cesar.arciniegas.mejia4@gmail.com> mi_llave_publica.asc #Exporta las llaves
#EL ">" redirige la salida extanar a una salida de texto