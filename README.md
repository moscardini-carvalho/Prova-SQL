# Projeto loja de livros

## 1 - Cenário
sistema de banco de dados onde temos 5 entidades nomeadas em CLIENTE, AUTOR, EDITORA, LOJA e LIVRO para um melhor gerenciamento de um aloja de livros.

## 2 - Modelagem Conceitual

![modelo conceitual](https://github.com/moscardini-carvalho/Prova-SQL/assets/162808430/712024d4-5ea8-4fab-be0b-0fa0cc9ed7b9)


## 3 - Modelagem Lógica

![modelo lógico](https://github.com/moscardini-carvalho/Prova-SQL/assets/162808430/13d839d7-d0d4-4aad-a345-31701e283e92)

AUTOR: (nome_autor (VARCHAR(50)), E-Mail_autor (VARCHAR(70)),ID_autor (PK, INT),data_nasc_autor (DATE),ID_livro (FK, INT))

CLIENTE: (tel_cliente (INT), nome_cliente (VARCHAR(50)), E-Mail_cliente (VARCHAR(70)), ID_cliente (PK, INT), data_nasc_cliente (DATE), logradouro_cliente (VARCHAR(200)), bairro_cliente (VARCHAR(30)), numero_cliente , (VARCHAR(10))) 

LOJA: (nome_loja (VARCHAR(50)),tel_loja (INT),site_loja (VARCHAR(70)),ID_loja (PK, INT),E-mail_loja (VARCHAR(70)),ID_cliente (FK, INT))

LIVRO: (ID_autor (FK, INT), nome_livro (VARCHAR(50)), titulo_livro (VARCHAR(30)), ID_livro (PK, INT), ID_editora (FK, INT))

EDITORA: (tel_editora (INT), nome_editora (VARCHAR(50)), E-Mail_editora (VARCHAR(70)), ID_editora (PK, INT), logradouro_editora (VARCHAR(200)), bairro_editora (VARCHAR(30)), numero_editora (VARCHAR(10)), ID_livro (FK, INT))

## 4 - Modelagem Física

```
create database loja;
use loja;
create table CLIENTE (

ID_cliente int primary key,
nome_cliente varchar(50),
Email_cliente varchar(70),
tel_cliente int,
data_nasc_cliente date,
logradouro_cliente varchar(200),
bairro_cliente varchar(30),
numero_cliente varchar(10)
);


create table CLIENTELIVRO (
ID_cliente int,
ID_livro int

);

create table AUTOR (

nome_autor varchar(50),
Email_autor varchar(70),
ID_autor int primary key,
data_nasc_autor date,

);

create table LIVRO (

nome_livro varchar(50),
titulo_livro varchar(30),
ID_livro int primary key,
ID_autor varchar(30) foreign key references AUTOR(ID_autor),


);

create table LOJA (

nome_loja varchar(50),
tel_loja int,
site_loja varchar(70),
ID_loja int primary key,
Email_loja varchar(70),
ID_cliente int foreign key references CLIENTE(ID_cliente)
);

create table EDITORA(

tel_editora int,
nome_editora varchar(50),
Email_editora varchar(70),
ID_editora int primary key,
logradouro_editora varchar(200),
bairro_editora varchar(30),
numero_editora varchar(10),
ID_livro int foreign key references LIVRO(ID_livro)
);

alter table AUTOR add constraint ID_livro foreign key (ID_livro) references LIVRO(ID_livro);
alter table LIVRO add constraint ID_autor foreign key (ID_autor) references AUTOR(ID_autor);
alter table LIVRO add constraint ID_editora foreign key (ID_editora) references EDITORA(ID_editora);

alter table CLIENTELIVRO add constraint ID_livro foreign key (ID_livro) references LIVRO(ID_livro);
```
## 6 - CRUD

Create:
```
INSERT INTO AUTOR (nome_autor, Email_autor, ID_autor, data_nasc_autor) VALUES 
('João Pedro Moscardini Carvalho', 'moscardinicarvalho1234@gmail.com', 020, '2004-08-24');
```
![CREATE](https://github.com/olie-dc/Prova-SQL/assets/162808430/d3c66e3b-d7a9-4b02-a660-6edc9dc51af9)

Read:
```
select * from AUTOR;
```
![READ](https://github.com/olie-dc/Prova-SQL/assets/162808430/d02b3f68-0a28-4847-abdc-aa0399ffc9bc)


Update:
```
update AUTOR set Email_autor = 'moscacarvalho2020@outlook.com';
```
![UPDATE](https://github.com/olie-dc/Prova-SQL/assets/162808430/aa142404-12fb-4ed2-b1d1-d2aa4ef8026e)


Delete:
```
delete from AUTOR where ID_autor = 020;
```
![DELETE](https://github.com/olie-dc/Prova-SQL/assets/162808430/e8f4393d-abbd-4b54-9bf8-a54ab7214bdc)

## 7 - Relatórios Seleção, Filtro e Ordenação:

# 1º Comando
```
select nome_autor, ID_autor from AUTOR where ID_autor <= 110;
```
![select 1](https://github.com/olie-dc/Prova-SQL/assets/162808430/fd440667-9d5b-4456-86ac-4ddce928bc45)

# 2º Comando
```
select nome_autor, ID_autor from AUTOR;
```
![select 2](https://github.com/olie-dc/Prova-SQL/assets/162808430/fb042e72-0632-4451-9a67-96663faaa40d)

# 3º Comando
```
select * from AUTOR order by data_nasc_autor asc;
```
![select 3](https://github.com/olie-dc/Prova-SQL/assets/162808430/1f9e4d41-121a-4c6b-a524-1b85a5424a70)

# 4º Comando
```
select * from EDITORA order by tel_editora;
```
![select 4](https://github.com/olie-dc/Prova-SQL/assets/162808430/b4336be4-a735-4c78-a54b-0911b65291b4)

# 5º Comando
```
select * from EDITORA where tel_editora between 25252525 and 40404040 and ID_livro between 201 and 215;
```
![select 5](https://github.com/olie-dc/Prova-SQL/assets/162808430/fb41653c-2e62-4291-82ac-20a341fdb5e5)

# 6º Comando
```
select Email_editora, bairro_editora, ID_livro from EDITORA where Email_editora = 'editora11@example.com';
```
![select 6](https://github.com/olie-dc/Prova-SQL/assets/162808430/dda7b99c-28cc-4f33-ac0b-a7bc77469608)

# 7º Comando
```
select logradouro_cliente, bairro_cliente, numero_cliente from CLIENTE;
```
![select 7](https://github.com/olie-dc/Prova-SQL/assets/162808430/1bffcdb8-5992-4a9a-a7f5-f6c3a15fcd70)

# 8º Comando
```
select logradouro_cliente, bairro_cliente, numero_cliente, ID_cliente from CLIENTE where ID_cliente between 5 and 15;
```
![select 8](https://github.com/olie-dc/Prova-SQL/assets/162808430/0622c621-c7f8-48c7-8eb2-1e6d416b06ef)

# 9º Comando
```
select * from LOJA;
```
![select 9](https://github.com/olie-dc/Prova-SQL/assets/162808430/ca748549-1b57-4d2e-b59e-80cd24eb05d8)

# 10º Comando
```
select nome_loja, site_loja, tel_loja from LOJA where tel_loja between 11111111 and 17171717;
```
![select 10](https://github.com/olie-dc/Prova-SQL/assets/162808430/ab8af07d-453f-4af7-8def-295194f1b3b4)
