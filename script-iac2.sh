#!/bin/bash

echo "Iniciando sequencia de comandos..."

echo "Atualizando o servidor..."

apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Servidor atualizado com sucesso!"

echo "Download da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando para diretorio apache..."

cd linux-site-dio-main/ 
cp -R * /var/www/html/


echo "Script concluido!"
