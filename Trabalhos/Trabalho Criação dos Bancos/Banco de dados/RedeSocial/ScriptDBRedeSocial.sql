USE [master]
GO
/****** Object:  Database [Rede Social]    Script Date: 12/12/2024 21:14:45 ******/
CREATE DATABASE [Rede Social]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Rede Social', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Rede Social.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Rede Social_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Rede Social_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Rede Social] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Rede Social].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Rede Social] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Rede Social] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Rede Social] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Rede Social] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Rede Social] SET ARITHABORT OFF 
GO
ALTER DATABASE [Rede Social] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Rede Social] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Rede Social] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Rede Social] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Rede Social] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Rede Social] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Rede Social] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Rede Social] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Rede Social] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Rede Social] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Rede Social] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Rede Social] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Rede Social] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Rede Social] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Rede Social] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Rede Social] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Rede Social] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Rede Social] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Rede Social] SET  MULTI_USER 
GO
ALTER DATABASE [Rede Social] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Rede Social] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Rede Social] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Rede Social] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Rede Social] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Rede Social] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Rede Social] SET QUERY_STORE = ON
GO
ALTER DATABASE [Rede Social] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Rede Social]
GO
/****** Object:  Table [dbo].[Amigos]    Script Date: 12/12/2024 21:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Amigos](
	[IDamigo] [int] IDENTITY(1,1) NOT NULL,
	[IDuser] [int] NOT NULL,
	[IDuseramigo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDamigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 12/12/2024 21:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentarios](
	[IDcomment] [int] IDENTITY(1,1) NOT NULL,
	[Comment] [text] NULL,
	[IDuser] [int] NULL,
	[IDpost] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDcomment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LIKES]    Script Date: 12/12/2024 21:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIKES](
	[IDlikes] [int] IDENTITY(1,1) NOT NULL,
	[IDpost] [int] NULL,
	[IDuser] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDlikes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mensagens]    Script Date: 12/12/2024 21:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mensagens](
	[IDmensage] [int] IDENTITY(1,1) NOT NULL,
	[IDenvia] [int] NULL,
	[IDrecebe] [int] NULL,
	[ConteudoTXT] [text] NULL,
	[ConteudoIMG] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDmensage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 12/12/2024 21:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[IDpost] [int] IDENTITY(1,1) NOT NULL,
	[IDuser] [int] NOT NULL,
	[ConteudoIMG] [image] NULL,
	[ConteudoTXT] [text] NULL,
	[DataPost] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDpost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 12/12/2024 21:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IDuser] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[NomePerfil] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Senha] [varchar](50) NOT NULL,
	[DataNascUser] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDuser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Amigos] ON 

INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (1, 1, 2)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (2, 1, 3)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (3, 2, 4)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (4, 2, 5)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (5, 3, 6)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (6, 3, 7)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (7, 4, 8)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (8, 4, 9)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (9, 5, 10)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (10, 5, 11)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (11, 6, 12)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (12, 6, 13)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (13, 7, 14)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (14, 7, 15)
INSERT [dbo].[Amigos] ([IDamigo], [IDuser], [IDuseramigo]) VALUES (15, 8, 1)
SET IDENTITY_INSERT [dbo].[Amigos] OFF
GO
SET IDENTITY_INSERT [dbo].[Comentarios] ON 

INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (1, N'Adorei!', 2, 1)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (2, N'Muito bom!', 3, 1)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (3, N'Excelente post!', 1, 2)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (4, N'Parabéns!', 4, 3)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (5, N'Interessante!', 5, 4)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (6, N'Muito inspirador!', 6, 5)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (7, N'Legal demais!', 7, 6)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (8, N'Ótima ideia!', 8, 7)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (9, N'Curti muito!', 9, 8)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (10, N'Sensacional!', 10, 9)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (11, N'Isso aí!', 11, 10)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (12, N'Que incrível!', 12, 11)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (13, N'Maravilhoso!', 13, 12)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (14, N'Gostei muito!', 14, 13)
INSERT [dbo].[Comentarios] ([IDcomment], [Comment], [IDuser], [IDpost]) VALUES (15, N'Feliz aniversário!', 15, 14)
SET IDENTITY_INSERT [dbo].[Comentarios] OFF
GO
SET IDENTITY_INSERT [dbo].[LIKES] ON 

INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (1, 1, 2)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (2, 1, 3)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (3, 2, 1)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (4, 3, 4)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (5, 4, 5)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (6, 5, 6)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (7, 6, 7)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (8, 7, 8)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (9, 8, 9)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (10, 9, 10)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (11, 10, 11)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (12, 11, 12)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (13, 12, 13)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (14, 13, 14)
INSERT [dbo].[LIKES] ([IDlikes], [IDpost], [IDuser]) VALUES (15, 14, 15)
SET IDENTITY_INSERT [dbo].[LIKES] OFF
GO
SET IDENTITY_INSERT [dbo].[Mensagens] ON 

INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (1, 1, 2, N'Oi, tudo bem?', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (2, 2, 1, N'Tudo ótimo, e você?', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (3, 3, 4, N'Gostei do seu post!', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (4, 4, 3, N'Obrigado!', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (5, 5, 6, N'Vamos marcar algo?', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (6, 6, 5, N'Claro!', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (7, 7, 8, N'Bom dia!', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (8, 8, 7, N'Bom dia, como vai?', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (9, 9, 10, N'Que legal sua postagem!', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (10, 10, 9, N'Obrigado!', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (11, 11, 12, N'Saudades de você!', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (12, 12, 11, N'Também estou com saudades.', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (13, 13, 14, N'Feliz aniversário!', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (14, 14, 13, N'Muito obrigado!', NULL)
INSERT [dbo].[Mensagens] ([IDmensage], [IDenvia], [IDrecebe], [ConteudoTXT], [ConteudoIMG]) VALUES (15, 15, 1, N'Oi, podemos conversar?', NULL)
SET IDENTITY_INSERT [dbo].[Mensagens] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (1, 1, NULL, N'Primeiro post da Alice!', CAST(N'2024-12-01' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (2, 2, NULL, N'Bruno está curtindo o dia!', CAST(N'2024-12-02' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (3, 3, NULL, N'Carla compartilhou uma foto incrível!', CAST(N'2024-12-03' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (4, 4, NULL, N'Daniel está aprendendo SQL.', CAST(N'2024-12-04' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (5, 5, NULL, N'Eduardo ama pizza!', CAST(N'2024-12-05' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (6, 6, NULL, N'Fernanda postou uma frase motivacional.', CAST(N'2024-12-06' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (7, 7, NULL, N'Gustavo adicionou uma nova foto.', CAST(N'2024-12-07' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (8, 8, NULL, N'Helena está ansiosa pelo fim de semana.', CAST(N'2024-12-08' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (9, 9, NULL, N'Isabela compartilhou um artigo interessante.', CAST(N'2024-12-09' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (10, 10, NULL, N'João postou uma lembrança da infância.', CAST(N'2024-12-10' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (11, 11, NULL, N'Karen está viajando para a praia!', CAST(N'2024-12-11' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (12, 12, NULL, N'Lucas compartilhou uma receita deliciosa.', CAST(N'2024-12-12' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (13, 13, NULL, N'Mariana escreveu um poema.', CAST(N'2024-12-13' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (14, 14, NULL, N'Nicolas está comemorando seu aniversário!', CAST(N'2024-12-14' AS Date))
INSERT [dbo].[Posts] ([IDpost], [IDuser], [ConteudoIMG], [ConteudoTXT], [DataPost]) VALUES (15, 15, NULL, N'Olivia está testando novos filtros.', CAST(N'2024-12-15' AS Date))
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (1, N'Alice Silva', N'alice123', N'alice.silva@gmail.com', N'senha123', CAST(N'1990-01-15' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (2, N'Bruno Costa', N'brunoc', N'bruno.costa@hotmail.com', N'123senha', CAST(N'1989-03-22' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (3, N'Carla Mendes', N'carla_m', N'carla.mendes@yahoo.com', N'carla@2023', CAST(N'1995-07-11' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (4, N'Daniel Oliveira', N'daniel_o', N'daniel.oliveira@outlook.com', N'dan1234', CAST(N'1992-11-03' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (5, N'Eduardo Santos', N'edu_s', N'eduardo.santos@gmail.com', N'edu12345', CAST(N'1998-02-20' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (6, N'Fernanda Lima', N'fer_lima', N'fernanda.lima@hotmail.com', N'fer321', CAST(N'1997-12-10' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (7, N'Gustavo Nunes', N'gustavo_n', N'gustavo.nunes@gmail.com', N'gust@2023', CAST(N'1993-05-09' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (8, N'Helena Rocha', N'helena_r', N'helena.rocha@yahoo.com', N'helena!23', CAST(N'1996-08-16' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (9, N'Isabela Ferreira', N'isa_fer', N'isabela.ferreira@outlook.com', N'isafer22', CAST(N'1994-09-01' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (10, N'João Pedro', N'joao_p', N'joao.pedro@gmail.com', N'jp123456', CAST(N'1991-10-30' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (11, N'Karen Lopes', N'karen_l', N'karen.lopes@yahoo.com', N'karen@123', CAST(N'1990-04-27' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (12, N'Lucas Martins', N'lucas_m', N'lucas.martins@gmail.com', N'lucas2023', CAST(N'1999-06-15' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (13, N'Mariana Souza', N'mariana_s', N'mariana.souza@hotmail.com', N'mari321', CAST(N'1992-01-09' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (14, N'Nicolas Dias', N'nicolas_d', N'nicolas.dias@yahoo.com', N'nicolas22', CAST(N'1997-03-18' AS Date))
INSERT [dbo].[Usuario] ([IDuser], [Nome], [NomePerfil], [Email], [Senha], [DataNascUser]) VALUES (15, N'Olivia Torres', N'olivia_t', N'olivia.torres@gmail.com', N'olivia@2024', CAST(N'1998-07-27' AS Date))
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuario__A9D105341861FD41]    Script Date: 12/12/2024 21:14:45 ******/
ALTER TABLE [dbo].[Usuario] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuario__E7430F4EB2CF953D]    Script Date: 12/12/2024 21:14:45 ******/
ALTER TABLE [dbo].[Usuario] ADD UNIQUE NONCLUSTERED 
(
	[NomePerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Amigos]  WITH CHECK ADD  CONSTRAINT [FK_AMIGOS_USUARIOS] FOREIGN KEY([IDuser])
REFERENCES [dbo].[Usuario] ([IDuser])
GO
ALTER TABLE [dbo].[Amigos] CHECK CONSTRAINT [FK_AMIGOS_USUARIOS]
GO
ALTER TABLE [dbo].[Amigos]  WITH CHECK ADD  CONSTRAINT [FK_FRIENDS_USUARIOS] FOREIGN KEY([IDuseramigo])
REFERENCES [dbo].[Usuario] ([IDuser])
GO
ALTER TABLE [dbo].[Amigos] CHECK CONSTRAINT [FK_FRIENDS_USUARIOS]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_COMENTARIOS_USUARIOS] FOREIGN KEY([IDuser])
REFERENCES [dbo].[Usuario] ([IDuser])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_COMENTARIOS_USUARIOS]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_COMMENTS_USUARIOS] FOREIGN KEY([IDpost])
REFERENCES [dbo].[Posts] ([IDpost])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_COMMENTS_USUARIOS]
GO
ALTER TABLE [dbo].[LIKES]  WITH CHECK ADD FOREIGN KEY([IDpost])
REFERENCES [dbo].[Posts] ([IDpost])
GO
ALTER TABLE [dbo].[LIKES]  WITH CHECK ADD FOREIGN KEY([IDuser])
REFERENCES [dbo].[Usuario] ([IDuser])
GO
ALTER TABLE [dbo].[Mensagens]  WITH CHECK ADD  CONSTRAINT [FK_MENSAGENS_USUARIOS] FOREIGN KEY([IDenvia])
REFERENCES [dbo].[Usuario] ([IDuser])
GO
ALTER TABLE [dbo].[Mensagens] CHECK CONSTRAINT [FK_MENSAGENS_USUARIOS]
GO
ALTER TABLE [dbo].[Mensagens]  WITH CHECK ADD  CONSTRAINT [FK_MENSAGES_USUARIOS] FOREIGN KEY([IDrecebe])
REFERENCES [dbo].[Usuario] ([IDuser])
GO
ALTER TABLE [dbo].[Mensagens] CHECK CONSTRAINT [FK_MENSAGES_USUARIOS]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_POSTS_USUARIO] FOREIGN KEY([IDuser])
REFERENCES [dbo].[Usuario] ([IDuser])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_POSTS_USUARIO]
GO
USE [master]
GO
ALTER DATABASE [Rede Social] SET  READ_WRITE 
GO
