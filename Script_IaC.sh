#!/bin/bash

echo" Criando diretórios.."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo"Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo" Criando usuarios..."

useradd -m carlos -s /bin/bash -p$(openssl senha -crypt Senha123)-G GRP_ADM
useradd -m maria -s /bin/bash -p$(openssl senha -crypt Senha123)-G GRP_ADM
useradd -m joao -s /bin/bash -p$(openssl senha -crypt Senha123)-G GRP_ADM

useradd -m debora -s /bin/bash -p$(openssl senha -crypt Senha123)-G GRP_ADM
useradd -m sebastiana -s /bin/bash -p$(openssl senha -crypt Senha123)-G GRP_ADM
useradd -m roberto -s /bin/bash -p$(openssl senha -crypt Senha123)-G GRP_ADM

useradd -m josefina -s /bin/bash -p$(openssl senha -crypt Senha123)-G GRP_ADM
useradd -m amanda -s /bin/bash -p$(openssl senha -crypt Senha123)-G GRP_ADM
useradd -m rogerio -s /bin/bash -p$(openssl senha -crypt Senha123)-G GRP_ADM

echo" especificando permissões dos diretórios..."

chown raiz:GRP_ADM /adm
chown raiz:GRP_VEN /ven
chown raiz:GRP_SEC /sec


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /publico

echo" finalizando script..."

