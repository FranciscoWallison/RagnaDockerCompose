# RagnaDocker

## Passso a passo

#### 1 º - Baixe o emulador ou adicione o seu emulador na pasta [serve](https://github.com/FranciscoWallison/RagnaDockerCompose/tree/main/serve) 
EXP: 
````
  ./serve/rathena
  ./serve/Hercules
````
#### 2 º - Altere a [linha](https://github.com/FranciscoWallison/RagnaDockerCompose/blob/main/docker-compose.yaml#L14) ````<EMULADOR>```` para a pasta do emulador baixado ou seu.
EXP: 
````
- ./serve/rathena:/emulador
- ./serve/Hercules:/emulador
````
#### 3 º - Nas configurações de acesso ao banco de dados que os emuladores utilizam como o arquivo ````inter_athena.conf````, substitua ````127.0.0.1```` por ````db````.
#### 4 º - Nas configurações de acesso como
````char_athena.conf````
---
    login_ip: serve
    char_ip: 127.0.0.1

````map_athena.conf```` 
---
    char_ip: serve
    map_ip: 127.0.0.1

#### 5 º - Configurando as tabelas do banco de dados na [linha](https://github.com/FranciscoWallison/RagnaDockerCompose/blob/main/docker-compose.yaml#L36) ````- ./db/<MYTABLES>:/docker-entrypoint-initdb.d```` substitua pela [pasta](https://github.com/FranciscoWallison/RagnaDockerCompose/tree/main/db) com todas suas tabelas.


EXP-PASTA: 
````
  /db/pre-renewal
    - item_db.sql
    - mob_db.sql
    - logs.sql
    - main.sql
...
  /db/renewal
    - item_db_re.sql
    - mob_db_re.sql
    - logs.sql
    - main.sql
````
EXP-docker-compose.yaml: 
````
  - ./db/pre-renewal:/docker-entrypoint-initdb.d
...
  - ./db/renewal:/docker-entrypoint-initdb.d
````


# Comandos uteis
 - docker exec -i -t ragnarok-app /bin/bash
 - ./entrypoint.sh 
 - ./configure --enable-packetver=20141022 && make clean && make server
 - wsproxy -a serve:6900,serve:6121,serve:5121
 - docker-compose -f "docker-compose.yaml" up -d --build

- Build
````
  sed -i 's/_ip: 127.0.0.1/_ip: db/g' ./conf/inter_athena.conf &&
  sed -i 's/\/\/login_ip: 127.0.0.1/login_ip: serve/g' ./conf/char_athena.conf &&
  sed -i 's/\/\/char_ip: 127.0.0.1/char_ip: 127.0.0.1/g' ./conf/char_athena.conf &&
  sed -i 's/\/\/char_ip: 127.0.0.1/char_ip: serve/g' ./conf/map_athena.conf &&
  sed -i 's/\/\/map_ip: 127.0.0.1/map_ip: 127.0.0.1/g' ./conf/map_athena.conf &&
  echo "Formart file"  &&
  dos2unix -f configure  &&
  dos2unix -f athena-start  &&
  dos2unix -f function.sh  &&
  echo "Giving permissions"  &&
  chmod a+x athena-start  &&
  chmod a+x configure  &&
  chmod a+x function.sh  &&
  echo "Stop the server if it is started"  &&
  ./athena-start stop  &&
  echo "Finally compile Emulator"  &&
  ./configure && make clean server  &&
  echo "Start server"  &&
  ./athena-start start
````
