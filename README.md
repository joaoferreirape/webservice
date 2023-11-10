# Projeto webservice

## Requisitos

* MySQL
* NodeJS, com os pacotes
  * express
  * express-generator
  * ip
  * mysql
  * nodemon

## Instruções

* Importe o dump do banco de dados: `./sql/dump.sql`
* Altere as configurações do arquivo: `./config/server/env.json`
  * Será preciso adicionar uma propriedade para a porta tcp adequada: `port: 9999`
* Faça testes utilizando o Postman com as requisições salvas no arquivo `./webservice.postman_collection.json`

## Banco de dados

Verifique os valores inseridos na base de dados criada com o projeto.
