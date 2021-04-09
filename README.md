# RagnaDocker

## Passso a passo

#### 1 º - Baixe o emulador ou adicione o seu emulador na pasta [serve](https://github.com/FranciscoWallison/RagnaDockerCompose/tree/main/serve) 
EXP: 
````
  serve/rathena
  serve/Hercules
````
#### 2 º - Altere a [linha](https://github.com/FranciscoWallison/RagnaDockerCompose/blob/main/docker-compose.yaml#L15) ````<EMULADOR>```` para a pasta do emulador baixado.
EXP: 
````
- ./serve/rathena:/emulador
- ./serve/Hercules:/emulador
````
#### 3 º - Nas configurações de acesso ao banco de dados que os emuladores utilizão como o arquivo ````inter_athena.conf````, subistitua ````127.0.0.1```` por ````db````.
#### 4 º - Nas configurações de acesso como ````char_athena.conf````, ````ilogin_athena.conf```` e ````map_athena.conf```` subistitua ````127.0.0.1```` por ````server````.
#### 5 º - Configurando as tabelas do banco de dados na [linha](https://github.com/FranciscoWallison/RagnaDockerCompose/blob/main/docker-compose.yaml#L37) ````- ./db/<MYTABLES>:/docker-entrypoint-initdb.d```` subistitua pela [pasta](https://github.com/FranciscoWallison/RagnaDockerCompose/tree/main/db) com todas suas tabelas.
EXP: 
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
