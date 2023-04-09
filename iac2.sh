#!/bin/bash

# Desafio 2 - Infrastructure as a Code

echo "Executando..."

echo "Atualizando..."
apt update
apt upgrade -y

echo "Instalando pacotes..."
apt install apache2 -y
apt install unzip -y

"Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

