#!/bin/bash

echo "Atualizando..."

apt update && sudo apt upgrade -y

echo "Concluído :)"

echo "Instalando o APACHE2..."

apt install apache2 -y

echo "APACHE instalado :)"

echo "Instalando o UNZIP..."

apt install unzip -y

echo "UNZIP instalado :)"

echo "#######################################"
echo " "
echo "      PROVISIONAND ARQUIVOS            "
echo " "
echo "#######################################"


rm /var/www/html/index.html
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip /tmp
unzip /tmp/main.zip
cd linux-site-dio-main
cp -R * /var/www/html


 


