# README

* Instalação:

Esse projeto foi desenvolvido em:
Ruby:  2.4.1p111 
Rails: 5.2.0
Banco de dados: MySQL

Depois de baixar o projeto:

1. Instale as dependências com o comando:
$ bundle install

2. Crie um database com o nome "ubs"

3. Rode a migração
$ rails db:migrate

4.Vamos importar os dados do arquivo ubs.csv, que encontra-se no diretório tmp, para o banco de dados através de uma tarefa:

rails csv:import






