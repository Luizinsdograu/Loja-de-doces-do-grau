# E-comeerce

banco de dados 

tabela usuario:
nome
id
email
senha

tabela cartao:
tipo: credito/debito
id
senha
for key usuario

tabela lagadouro:
tipo: rua/avenida/bairro
nome
id

tabela me
cidade
estado
pais
id


tabela endereco:
cep
numero da casa
for key usuario
for key lagadouro
for key me

tabela itens:
nome
id
valor
descricao
quantidade

