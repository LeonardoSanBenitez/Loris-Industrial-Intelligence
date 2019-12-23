#!/bin/bash
#usage: ./uploadToServer PORT
user=labsmart
host=labsmart.ifsc.edu.br
dest=loris/
if [ $# = 1 ]; then
    port=$1
else
    port=22
fi
# todo: --exclude=$0 não funciona.
# cria último diretório no destino se não existe (mas /var/www/ precisa existir)
rsync --verbose -r -e "ssh -p $port" --exclude=.git* --exclude=$0 ./ $user@$host:/var/www/$dest
