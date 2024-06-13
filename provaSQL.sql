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

INSERT INTO CLIENTE (ID_cliente, nome_cliente, Email_cliente, tel_cliente, data_nasc_cliente, logradouro_cliente, bairro_cliente, numero_cliente) 
VALUES 
(1, 'Maria Silva', 'maria.silva@example.com', 123456789, '1990-05-15', 'Rua A', 'Centro', '123'),
(2, 'João Oliveira', 'joao.oliveira@example.com', 987654321, '1992-08-20', 'Rua B', 'Bairro X', '456'),
(3, 'Ana Souza', 'ana.souza@example.com', 987654321, '1993-01-10', 'Avenida C', 'Bairro Y', '789'),
(4, 'Pedro Santos', 'pedro.santos@example.com', 123456789, '1988-07-05', 'Rua D', 'Bairro Z', '1011'),
(5, 'Carla Almeida', 'carla.almeida@example.com', 987654321, '1985-09-18', 'Rua E', 'Centro', '1213'),
(6, 'Bruno Costa', 'bruno.costa@example.com', 123456789, '1991-11-30', 'Rua F', 'Bairro X', '1415'),
(7, 'Mariana Pereira', 'mariana.pereira@example.com', 987654321, '1989-03-25', 'Rua G', 'Bairro Y', '1617'),
(8, 'Lucas Fernandes', 'lucas.fernandes@example.com', 123456789, '1994-04-12', 'Rua H', 'Bairro Z', '1819'),
(9, 'Juliana Lima', 'juliana.lima@example.com', 987654321, '1987-06-28', 'Rua I', 'Centro', '2021'),
(10, 'Gabriel Gomes', 'gabriel.gomes@example.com', 123456789, '1990-08-03', 'Rua J', 'Bairro X', '2223'),
(11, 'Amanda Martins', 'amanda.martins@example.com', 987654321, '1986-12-15', 'Rua K', 'Bairro Y', '2425'),
(12, 'Rafaela Castro', 'rafaela.castro@example.com', 123456789, '1993-02-20', 'Rua L', 'Bairro Z', '2627'),
(13, 'Fernando Carvalho', 'fernando.carvalho@example.com', 987654321, '1984-10-08', 'Rua M', 'Centro', '2829'),
(14, 'Isabela Oliveira', 'isabela.oliveira@example.com', 123456789, '1991-07-14', 'Rua N', 'Bairro X', '3031'),
(15, 'Rodrigo Santos', 'rodrigo.santos@example.com', 987654321, '1988-04-05', 'Rua O', 'Bairro Y', '3233'),
(16, 'Beatriz Alves', 'beatriz.alves@example.com', 123456789, '1992-11-22', 'Rua P', 'Bairro Z', '3435'),
(17, 'Gustavo Lima', 'gustavo.lima@example.com', 987654321, '1989-09-17', 'Rua Q', 'Centro', '3637'),
(18, 'Camila Sousa', 'camila.sousa@example.com', 123456789, '1994-03-10', 'Rua R', 'Bairro X', '3839'),
(19, 'Vinicius Ferreira', 'vinicius.ferreira@example.com', 987654321, '1987-01-28', 'Rua S', 'Bairro Y', '4041'),
(20, 'Laura Rodrigues', 'laura.rodrigues@example.com', 123456789, '1990-06-08', 'Rua T', 'Bairro Z', '4243');

INSERT INTO AUTOR (nome_autor, Email_autor, ID_autor, data_nasc_autor) 
VALUES 
('Carlos Silva', 'carlos.silva@example.com', 101, '1975-01-10'),
('Ana Oliveira', 'ana.oliveira@example.com', 102, '1980-03-20'),
('Mariana Santos', 'mariana.santos@example.com', 103, '1978-05-15'),
('Pedro Costa', 'pedro.costa@example.com', 104, '1982-07-25'),
('Juliana Lima', 'juliana.lima@example.com', 105, '1976-09-30'),
('Gabriel Fernandes', 'gabriel.fernandes@example.com', 106, '1984-11-12'),
('Amanda Gomes', 'amanda.gomes@example.com', 107, '1979-12-05'),
('Rafael Oliveira', 'rafael.oliveira@example.com', 108, '1986-02-20'),
('Fernanda Silva', 'fernanda.silva@example.com', 109, '1977-04-08'),
('Rodrigo Martins', 'rodrigo.martins@example.com', 110, '1983-06-14'),
('Beatriz Almeida', 'beatriz.almeida@example.com', 111, '1974-08-22'),
('Gustavo Lima', 'gustavo.lima@example.com', 112, '1988-09-17'),
('Camila Sousa', 'camila.sousa@example.com', 113, '1972-11-30'),
('Vinicius Ferreira', 'vinicius.ferreira@example.com', 114, '1975-12-15'),
('Laura Rodrigues', 'laura.rodrigues@example.com', 115, '1989-02-20'),
('Mariana Silva', 'mariana.silva@example.com', 116, '1973-04-10'),
('Pedro Oliveira', 'pedro.oliveira@example.com', 117, '1987-06-28'),
('Ana Costa', 'ana.costa@example.com', 118, '1971-08-03'),
('Carlos Santos', 'carlos.santos@example.com', 119, '1992-09-15'),
('Juliana Lima', 'juliana.lima@example.com', 120, '1976-11-22');

INSERT INTO LIVRO (nome_livro, titulo_livro, ID_livro, ID_autor) 
VALUES 
('Livro1', 'Titulo1', 201, 101),
('Livro2', 'Titulo2', 202, 102),
('Livro3', 'Titulo3', 203, 103),
('Livro4', 'Titulo4', 204, 104),
('Livro5', 'Titulo5', 205, 105),
('Livro6', 'Titulo6', 206, 106),
('Livro7', 'Titulo7', 207, 107),
('Livro8', 'Titulo8', 208, 108),
('Livro9', 'Titulo9', 209, 109),
('Livro10', 'Titulo10', 210, 110),
('Livro11', 'Titulo11', 211, 111),
('Livro12', 'Titulo12', 212, 112),
('Livro13', 'Titulo13', 213, 113),
('Livro14', 'Titulo14', 214, 114),
('Livro15', 'Titulo15', 215, 115),
('Livro16', 'Titulo16', 216, 116),
('Livro17', 'Titulo17', 217, 117),
('Livro18', 'Titulo18', 218, 118),
('Livro19', 'Titulo19', 219, 119),
('Livro20', 'Titulo20', 220, 120);

INSERT INTO LOJA (nome_loja, tel_loja, site_loja, ID_loja, Email_loja, ID_cliente) 
VALUES 
('Loja1', 1111111, 'www.loja1.com', 301, 'contato@loja1.com', 1),
('Loja2', 2222222, 'www.loja2.com', 302, 'contato@loja2.com', 2),
('Loja3', 3333333, 'www.loja3.com', 303, 'contato@loja3.com', 3),
('Loja4', 4444444, 'www.loja4.com', 304, 'contato@loja4.com', 4),
('Loja5', 5555555, 'www.loja5.com', 305, 'contato@loja5.com', 5),
('Loja6', 6666666, 'www.loja6.com', 306, 'contato@loja6.com', 6),
('Loja7', 7777777, 'www.loja7.com', 307, 'contato@loja7.com', 7),
('Loja8', 8888888, 'www.loja8.com', 308, 'contato@loja8.com', 8),
('Loja9', 9999999, 'www.loja9.com', 309, 'contato@loja9.com', 9),
('Loja10', 10101010, 'www.loja10.com', 310, 'contato@loja10.com', 10),
('Loja11', 11111111, 'www.loja11.com', 311, 'contato@loja11.com', 11),
('Loja12', 12121212, 'www.loja12.com', 312, 'contato@loja12.com', 12),
('Loja13', 13131313, 'www.loja13.com', 313, 'contato@loja13.com', 13),
('Loja14', 14141414, 'www.loja14.com', 314, 'contato@loja14.com', 14),
('Loja15', 15151515, 'www.loja15.com', 315, 'contato@loja15.com', 15),
('Loja16', 16161616, 'www.loja16.com', 316, 'contato@loja16.com', 16),
('Loja17', 17171717, 'www.loja17.com', 317, 'contato@loja17.com', 17),
('Loja18', 18181818, 'www.loja18.com', 318, 'contato@loja18.com', 18),
('Loja19', 19191919, 'www.loja19.com', 319, 'contato@loja19.com', 19),
('Loja20', 20202020, 'www.loja20.com', 320, 'contato@loja20.com', 20);

INSERT INTO EDITORA (tel_editora, nome_editora, Email_editora, ID_editora, logradouro_editora, bairro_editora, numero_editora, ID_livro) 
VALUES 
(21212121, 'Editora1', 'editora1@example.com', 401, 'Avenida Principal', 'Bairro W', '1', 201),
(22222222, 'Editora2', 'editora2@example.com', 402, 'Rua Secundária', 'Bairro X', '2', 202),
(23232323, 'Editora3', 'editora3@example.com', 403, 'Praça Central', 'Bairro Y', '3', 203),
(24242424, 'Editora4', 'editora4@example.com', 404, 'Alameda das Flores', 'Bairro Z', '4', 204),
(25252525, 'Editora5', 'editora5@example.com', 405, 'Rua das Árvores', 'Centro', '5', 205),
(26262626, 'Editora6', 'editora6@example.com', 406, 'Avenida dos Sonhos', 'Bairro W', '6', 206),
(27272727, 'Editora7', 'editora7@example.com', 407, 'Travessa da Esperança', 'Bairro X', '7', 207),
(28282828, 'Editora8', 'editora8@example.com', 408, 'Rua das Estrelas', 'Bairro Y', '8', 208),
(29292929, 'Editora9', 'editora9@example.com', 409, 'Avenida da Paz', 'Bairro Z', '9', 209),
(30303030, 'Editora10', 'editora10@example.com', 410, 'Alameda dos Anjos', 'Centro', '10', 210),
(31313131, 'Editora11', 'editora11@example.com', 411, 'Praça das Maravilhas', 'Bairro W', '11', 211),
(32323232, 'Editora12', 'editora12@example.com', 412, 'Travessa da Alegria', 'Bairro X', '12', 212),
(33333333, 'Editora13', 'editora13@example.com', 413, 'Avenida da Liberdade', 'Bairro Y', '13', 213),
(34343434, 'Editora14', 'editora14@example.com', 414, 'Rua dos Sonhos', 'Bairro Z', '14', 214),
(35353535, 'Editora15', 'editora15@example.com', 415, 'Alameda das Maravilhas', 'Centro', '15', 215),
(36363636, 'Editora16', 'editora16@example.com', 416, 'Avenida da Felicidade', 'Bairro W', '16', 216),
(37373737, 'Editora17', 'editora17@example.com', 417, 'Rua da Harmonia', 'Bairro X', '17', 217),
(38383838, 'Editora18', 'editora18@example.com', 418, 'Travessa da Paz', 'Bairro Y', '18', 218),
(39393939, 'Editora19', 'editora19@example.com', 419, 'Praça da Alegria', 'Bairro Z', '19', 219),
(40404040, 'Editora20', 'editora20@example.com', 420, 'Avenida dos Anjos', 'Centro', '20', 220);

INSERT INTO AUTOR (nome_autor, Email_autor, ID_autor, data_nasc_autor) 
VALUES 
('João Pedro Moscardini Carvalho', 'moscardinicarvalho1234@gmail.com', 020, '2004-08-24');
select * from AUTOR;

update AUTOR set Email_autor = 'moscacarvalho2020@outlook.com';
select * from AUTOR;

select nome_autor, ID_autor from AUTOR;

delete from AUTOR where ID_autor = 020;

select * from AUTOR;

select nome_autor, ID_autor from AUTOR;


select nome_autor, ID_autor from AUTOR where ID_autor <= 110;

select * from AUTOR order by data_nasc_autor asc;

select * from EDITORA order by tel_editora;

select * from EDITORA where tel_editora between 25252525 and 40404040 and ID_livro between 201 and 215;

select Email_editora, bairro_editora, ID_livro from EDITORA where Email_editora = 'editora11@example.com';

select logradouro_cliente, bairro_cliente, numero_cliente from CLIENTE;

select logradouro_cliente, bairro_cliente, numero_cliente, ID_cliente from CLIENTE where ID_cliente between 5 and 15;

select * from LOJA;

select nome_loja, site_loja, tel_loja from LOJA where tel_loja between 11111111 and 17171717;