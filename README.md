### Projeto loja de livros

## 1 - Cenário
sistema de banco de dados onde temos 5 entidades nomeadas em CLIENTE, AUTOR, EDITORA, LOJA e LIVRO para um melhor gerenciamento de um aloja de livros.

## 2 - Modelagem Conceitual

![modelo conceitual](https://github.com/moscardini-carvalho/Prova-SQL/assets/162808430/712024d4-5ea8-4fab-be0b-0fa0cc9ed7b9)


## 3 - Modelagem Lógica

AUTOR: (nome_autor (VARCHAR(50)), E-Mail_autor (VARCHAR(70)),ID_autor (PK, INT),data_nasc_autor (DATE),ID_livro (FK, INT))

CLIENTE: (tel_cliente (INT), nome_cliente (VARCHAR(50)), E-Mail_cliente (VARCHAR(70)), ID_cliente (PK, INT), data_nasc_cliente (DATE), logradouro_cliente (VARCHAR(200)), bairro_cliente (VARCHAR(30)), numero_cliente , (VARCHAR(10))) 

LOJA: (nome_loja (VARCHAR(50)),tel_loja (INT),site_loja (VARCHAR(70)),ID_loja (PK, INT),E-mail_loja (VARCHAR(70)),ID_cliente (FK, INT))

LIVRO: (ID_autor (FK, INT), nome_livro (VARCHAR(50)), titulo_livro (VARCHAR(30)), ID_livro (PK, INT), ID_editora (FK, INT))

EDITORA: (tel_editora (INT), nome_editora (VARCHAR(50)), E-Mail_editora (VARCHAR(70)), ID_editora (PK, INT), logradouro_editora (VARCHAR(200)), bairro_editora (VARCHAR(30)), numero_editora (VARCHAR(10)), ID_livro (FK, INT))

## 4 - Modelagem Física

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

## 6 - CRUD

Create:
INSERT INTO AUTOR (nome_autor, Email_autor, ID_autor, data_nasc_autor) VALUES 
('João Pedro Moscardini Carvalho', 'moscardinicarvalho1234@gmail.com', 020, '2004-08-24');




Read:
SELECT * FROM Membros;


Update:
UPDATE Membros SET Email = 'victor_updated@example.com' WHERE ID_user = 21;


Delete:
DELETE FROM Membros WHERE ID_user = 21;

7 - Relatórios
Seleção, Filtro e Ordenação:
SELECT * FROM Membros;


SELECT * FROM Livros WHERE Genero = 'Fantasia';


SELECT ISBN From Livros WHERE Genero = 'Poesia';


SELECT Comentarios.Texto, Membros.Nome_user FROM Comentarios
JOIN Membros ON Comentarios.ID_user = Membros.ID_user WHERE Comentarios.ID_discussoes = 1;


SELECT Clubes_de_Leitura.Nome_clube, Membros.Nome_user FROM Clubes_de_Leitura
JOIN Membros ON Clubes_de_Leitura.ID_user = Membros.ID_user WHERE Membros.Nome_user = 'Alice';


SELECT Livros.Titulo, Discussoes.Conteudo FROM Livros
JOIN Discussoes ON Livros.ISBN = Discussoes.ISBN;


SELECT Membros.Nome_user, Endereco.Cidade, Endereco.Rua FROM Membros
JOIN Endereco ON Membros.ID_endereco = Endereco.ID_endereco WHERE Membros.Nome_user = 'Bob';


SELECT Discussoes.Conteudo, Clubes_de_Leitura.Nome_clube FROM Discussoes
JOIN Clubes_de_Leitura ON Discussoes.ID_clube = Clubes_de_Leitura.ID_clube;


SELECT Clubes_de_Leitura.Nome_clube, COUNT(Membros.ID_user) AS Numero_de_Membros FROM Membros
JOIN Clubes_de_Leitura ON Membros.ID_clube = Clubes_de_Leitura.ID_clube GROUP BY Clubes_de_Leitura.Nome_clube;


SELECT Comentarios.Texto, Comentarios.Data_Hora, Membros.Nome_user FROM Comentarios
JOIN Membros ON Comentarios.ID_user = Membros.ID_user ORDER BY Comentarios.Data_Hora DESC;
