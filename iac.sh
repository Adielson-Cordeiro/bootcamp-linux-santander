#!/bin/bash

echo "Criando diretórios..."

sudo mkdir /publico /adm /ven /sec

echo "Especificando permissões dos diretórios..."

sudo chmod 777 /publico
sudo chmod 770 /adm /ven /sec

echo "Criando grupos de usuários..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando usuários..."

sudo useradd carlos -c "Carlos da Silva" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 123)
sudo useradd maria -c "Maria da Silva" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 123)
sudo useradd joao -c "João da Silva" -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 123)

sudo useradd debora -c "Debora da Silva" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 123)
sudo useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 123)
sudo useradd roberto -c "Roberto da Silva" -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 123)

sudo useradd josefina -c "Josefina da Silva" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 123)
sudo useradd amanda -c "Amanda da Silva" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 123)
sudo useradd rogerio -c "Rogerio da Silva" -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 123)

echo "Definindo grupos dos diretórios..."

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

echo "Fim..."
