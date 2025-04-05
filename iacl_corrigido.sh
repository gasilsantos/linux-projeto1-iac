#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

# GRUPO ADM
useradd carlos -m -s /bin/bash -G GRP_ADM
echo "carlos:Senha123" | chpasswd

useradd maria -m -s /bin/bash -G GRP_ADM
echo "maria:Senha123" | chpasswd

useradd joao -m -s /bin/bash -G GRP_ADM
echo "joao:Senha123" | chpasswd

# GRUPO VEN
useradd debora -m -s /bin/bash -G GRP_VEN
echo "debora:Senha123" | chpasswd

useradd sebastiana -m -s /bin/bash -G GRP_VEN
echo "sebastiana:Senha123" | chpasswd

useradd roberto -m -s /bin/bash -G GRP_VEN
echo "roberto:Senha123" | chpasswd

# GRUPO SEC
useradd josefina -m -s /bin/bash -G GRP_SEC
echo "josefina:Senha123" | chpasswd

useradd amanda -m -s /bin/bash -G GRP_SEC
echo "amanda:Senha123" | chpasswd

useradd rogerio -m -s /bin/bash -G GRP_SEC
echo "rogerio:Senha123" | chpasswd

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Concluído com sucesso!"
