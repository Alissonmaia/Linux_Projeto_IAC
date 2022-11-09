#!/bin/bash

echo " Atualizando servidor01."

apt-get update 
apt-get upgrade -y

echo "Baixando o apache e unzip."

apt-get install apache2 -y 
apt-get install unzip -y
chmod 770 /tmp  
cd /tmp

apt-get install wget 

echo "Baixando os arquivos de atualização..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo "Extraindo os arquivos..."

unzip main.zip

cd linux-site-dio-main
echo "Copiando arquivos para diretório html..."
cp -R * /var/www/html/

echo "Finalizado..."
