GO

CREATE DATABASE RedeSocial;

GO

USE RedeSocial;

GO

CREATE TABLE Usuario(
IDuser INT IDENTITY (1,1) PRIMARY KEY,
Nome VARCHAR(100) NOT NULL,
NomePerfil varchar (50) UNIQUE NOT NULL,
Email VARCHAR(100) UNIQUE NOT NULL,
Senha VARCHAR (50) NOT NULL,
DataNascUser DATE
);

GO

INSERT INTO Usuario (Nome, NomePerfil, Email, Senha, DataNascUser)
VALUES
('Alice Silva', 'alice123', 'alice.silva@gmail.com', 'senha123', '1990-01-15'),
('Bruno Costa', 'brunoc', 'bruno.costa@hotmail.com', '123senha', '1989-03-22'),
('Carla Mendes', 'carla_m', 'carla.mendes@yahoo.com', 'carla@2023', '1995-07-11'),
('Daniel Oliveira', 'daniel_o', 'daniel.oliveira@outlook.com', 'dan1234', '1992-11-03'),
('Eduardo Santos', 'edu_s', 'eduardo.santos@gmail.com', 'edu12345', '1998-02-20'),
('Fernanda Lima', 'fer_lima', 'fernanda.lima@hotmail.com', 'fer321', '1997-12-10'),
('Gustavo Nunes', 'gustavo_n', 'gustavo.nunes@gmail.com', 'gust@2023', '1993-05-09'),
('Helena Rocha', 'helena_r', 'helena.rocha@yahoo.com', 'helena!23', '1996-08-16'),
('Isabela Ferreira', 'isa_fer', 'isabela.ferreira@outlook.com', 'isafer22', '1994-09-01'),
('João Pedro', 'joao_p', 'joao.pedro@gmail.com', 'jp123456', '1991-10-30'),
('Karen Lopes', 'karen_l', 'karen.lopes@yahoo.com', 'karen@123', '1990-04-27'),
('Lucas Martins', 'lucas_m', 'lucas.martins@gmail.com', 'lucas2023', '1999-06-15'),
('Mariana Souza', 'mariana_s', 'mariana.souza@hotmail.com', 'mari321', '1992-01-09'),
('Nicolas Dias', 'nicolas_d', 'nicolas.dias@yahoo.com', 'nicolas22', '1997-03-18'),
('Olivia Torres', 'olivia_t', 'olivia.torres@gmail.com', 'olivia@2024', '1998-07-27');

GO

CREATE TABLE Posts(
IDpost INT IDENTITY (1,1) PRIMARY KEY,
IDuser INT NOT NULL,
ConteudoIMG IMAGE NULL,
ConteudoTXT TEXT NULL,
DataPost date,
CONSTRAINT FK_POSTS_USUARIO FOREIGN KEY (IDuser)
REFERENCES Usuario(IDuser)
);

GO

INSERT INTO Posts (IDuser, ConteudoIMG, ConteudoTXT, DataPost)
VALUES
(1, NULL, 'Primeiro post da Alice!', '2024-12-01'),
(2, NULL, 'Bruno está curtindo o dia!', '2024-12-02'),
(3, NULL, 'Carla compartilhou uma foto incrível!', '2024-12-03'),
(4, NULL, 'Daniel está aprendendo SQL.', '2024-12-04'),
(5, NULL, 'Eduardo ama pizza!', '2024-12-05'),
(6, NULL, 'Fernanda postou uma frase motivacional.', '2024-12-06'),
(7, NULL, 'Gustavo adicionou uma nova foto.', '2024-12-07'),
(8, NULL, 'Helena está ansiosa pelo fim de semana.', '2024-12-08'),
(9, NULL, 'Isabela compartilhou um artigo interessante.', '2024-12-09'),
(10, NULL, 'João postou uma lembrança da infância.', '2024-12-10'),
(11, NULL, 'Karen está viajando para a praia!', '2024-12-11'),
(12, NULL, 'Lucas compartilhou uma receita deliciosa.', '2024-12-12'),
(13, NULL, 'Mariana escreveu um poema.', '2024-12-13'),
(14, NULL, 'Nicolas está comemorando seu aniversário!', '2024-12-14'),
(15, NULL, 'Olivia está testando novos filtros.', '2024-12-15');


GO

CREATE TABLE LIKES(
IDlikes INT IDENTITY(1,1) PRIMARY KEY,
IDpost INT,
IDuser INT,
FOREIGN KEY (IDpost) REFERENCES Posts (IDpost),
FOREIGN KEY (IDuser) REFERENCES Usuario (IDuser)
);

GO

INSERT INTO LIKES (IDpost, IDuser)
VALUES
(1, 2),
(1, 3),
(2, 1),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(14, 15);

GO

CREATE TABLE Comentarios(
IDcomment INT IDENTITY(1,1) PRIMARY KEY,
Comment TEXT,
IDuser INT,
IDpost INT,
CONSTRAINT FK_COMENTARIOS_USUARIOS FOREIGN KEY (IDuser) REFERENCES Usuario (IDuser),
CONSTRAINT FK_COMMENTS_USUARIOS FOREIGN KEY (IDpost) REFERENCES Posts (IDpost)
);

GO

INSERT INTO Comentarios (Comment, IDuser, IDpost)
VALUES
('Adorei!', 2, 1),
('Muito bom!', 3, 1),
('Excelente post!', 1, 2),
('Parabéns!', 4, 3),
('Interessante!', 5, 4),
('Muito inspirador!', 6, 5),
('Legal demais!', 7, 6),
('Ótima ideia!', 8, 7),
('Curti muito!', 9, 8),
('Sensacional!', 10, 9),
('Isso aí!', 11, 10),
('Que incrível!', 12, 11),
('Maravilhoso!', 13, 12),
('Gostei muito!', 14, 13),
('Feliz aniversário!', 15, 14);


GO

CREATE TABLE Amigos (
IDamigo INT IDENTITY(1,1) PRIMARY KEY,
IDuser INT NOT NULL,
IDuseramigo INT NOT NULL,
CONSTRAINT FK_AMIGOS_USUARIOS FOREIGN KEY (IDuser) REFERENCES Usuario (IDuser),
CONSTRAINT FK_FRIENDS_USUARIOS FOREIGN KEY (IDuseramigo) REFERENCES Usuario (IDuser),
);

GO

INSERT INTO Amigos (IDuser, IDuseramigo)
VALUES
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7),
(4, 8),
(4, 9),
(5, 10),
(5, 11),
(6, 12),
(6, 13),
(7, 14),
(7, 15),
(8, 1);

GO

CREATE TABLE Mensagens (
IDmensage INT IDENTITY (1,1) PRIMARY KEY,
IDenvia INT,
IDrecebe INT,
ConteudoTXT TEXT,
ConteudoIMG IMAGE,
CONSTRAINT FK_MENSAGENS_USUARIOS FOREIGN KEY (IDenvia) REFERENCES Usuario(IDuser),
CONSTRAINT FK_MENSAGES_USUARIOS FOREIGN KEY (IDrecebe) REFERENCES Usuario(IDuser)
);

GO

INSERT INTO Mensagens (IDenvia, IDrecebe, ConteudoTXT, ConteudoIMG)
VALUES
(1, 2, 'Oi, tudo bem?', NULL),
(2, 1, 'Tudo ótimo, e você?', NULL),
(3, 4, 'Gostei do seu post!', NULL),
(4, 3, 'Obrigado!', NULL),
(5, 6, 'Vamos marcar algo?', NULL),
(6, 5, 'Claro!', NULL),
(7, 8, 'Bom dia!', NULL),
(8, 7, 'Bom dia, como vai?', NULL),
(9, 10, 'Que legal sua postagem!', NULL),
(10, 9, 'Obrigado!', NULL),
(11, 12, 'Saudades de você!', NULL),
(12, 11, 'Também estou com saudades.', NULL),
(13, 14, 'Feliz aniversário!', NULL),
(14, 13, 'Muito obrigado!', NULL),
