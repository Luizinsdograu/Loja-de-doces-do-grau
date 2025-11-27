# E-comeerce

banco de dados 

tabela usuario:
nome;
id;
email;
senha;

tabela cartao:
tipo: credito/debito;
id;
senha;
for key usuario;

tabela lagadouro:
tipo: rua/avenida/bairro;
nome;
id;

tabela me
cidade;
estado;
pais;
id;


tabela endereco:
cep;
numero da casa;
for key usuario;
for key lagadouro;
for key me;

tabela itens:
nome;
id;
valor;
descricao;
quantidade;

CREATE TABLE cliente 
( 
 id_cliente INT PRIMARY KEY AUTO_INCREMENT,  
 nome varchar(50),  
 email varchar(50),  
 senha varchar(50), 
 id_endereco int,
 id_item int,
 id_pagamento INT,
 FOREIGN key id_pagamento REFERENCES pagamento(id_pagamento),
 FOREIGN key id_item REFERENCES item(id_item),
 FOREIGN key id_endereco REFERENCES endereco(id_endereco)
);

CREATE TABLE endereco 
( 
 id_endereco INT PRIMARY KEY AUTO_INCREMENT,  
 cep varchar(50),  
 numero_da_casa INT,  
 id_lagadouro int,
 id_me int,
 FOREIGN key id_lagadouro REFERENCES lagadouro(id_lagdouro),
 FOREIGN key id_me REFERENCES me(id_me)
); 

CREATE TABLE item 
( 
 nome varchar(50),  
 quantidade INT,  
 valor INT,  
 descricao varchar(50),  
 id_item INT PRIMARY KEY AUTO_INCREMENT
); 

CREATE TABLE pagamento 
( 
 id_pagamento INT PRIMARY KEY AUTO_INCREMENT,  
 valor int,
 id_pix int,
 id_cartao int,
 FOREIGN key id_pix REFERENCES pix(id_pix),
 FOREIGN key id_cartao REFERENCES cartao(id_cartao)
); 

CREATE TABLE lagadouro 
( 
 tipo varchar(50),  
 nome varchar(50),  
 id_lagadouro INT PRIMARY KEY AUTO_INCREMENT
); 

CREATE TABLE me 
( 
 nome_da_cidade varchar(50),  
 id_me INT PRIMARY KEY AUTO_INCREMENT, 
 pais varchar(50),  
 estado varchar(50)
); 

CREATE TABLE cartao 
( 
 id_cartao INT PRIMARY KEY AUTO_INCREMENT,  
 numero INT,  
 senha INT,  
 tipo varchar(50)
); 

CREATE TABLE pix 
( 
 id_pix INT PRIMARY KEY AUTO_INCREMENT,  
 chave_pix varchar(50)
); 

