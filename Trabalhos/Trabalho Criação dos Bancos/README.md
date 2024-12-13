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

GO# Projeto de Banco de Dados - Curso Técnico de Desenvolvimento de Sistemas

## Integrantes:
- **Arthur Araújo Marzano**
- **Arthur Augusto Alves Araujo**
- **Gabriel Arthur Ferreira De Jesus**

## Objetivo
O objetivo deste projeto é criar bancos de dados no SQL Server com base em modelos relacionais. As tabelas devem seguir as regras da 1ª Forma Normal (1FN) e respeitar as cardinalidades entre as entidades, além de implementar corretamente as chaves primárias (Primary Key) e chaves estrangeiras (Foreign Key). O projeto foi dividido da seguinte forma:

- **Arthur Araújo Marzano**: Banco de dados da música e da biblioteca
- **Arthur Augusto Alves Araujo**: Banco de dados de rede social e de handebol
- **Gabriel Arthur Ferreira De Jesus**: Banco de dados de oficina mecânica

---

## Banco de Dados da Música

### Modelo Conceitual

![Modelo Conceitual da Música](https://github.com/Maarzano/C-digos-C---Curso/blob/2ab8189da3c14c8f38ddf4ae63e2e0d485266fcc/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/DiagramaConceitual_db-Musicas.png)

#### Descrição do Modelo Conceitual:
O banco de dados da música tem como objetivo organizar e gerenciar as informações sobre artistas, álbuns e músicas. O modelo conceitual é composto pelas seguintes entidades:

- **Artistas**: Contém informações sobre os artistas, como nome e nacionalidade.
- **Álbuns**: Armazena dados sobre os álbuns lançados pelos artistas, incluindo o nome do álbum e ano de lançamento.
- **Músicas**: Registra as músicas presentes em cada álbum, com informações como nome e duração da música.
- **Usuários**: Gerencia os usuários que podem interagir com a plataforma

#### Relações:
- **Artista → Álbum**: Um artista pode ter múltiplos álbuns. (Relacionamento 1:N)
- **Álbum → Música**: Um álbum pode ter várias músicas. (Relacionamento 1:N)
- **Usuário → Música**: Um usuário pode adicionar músicas à sua lista de reprodução. (Relacionamento N:M)

### Tabelas do Banco de Dados

#### Artistas
![Tabela Artistas](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Music_Table_Artistas.png)

#### Músicas
![Tabela Músicas](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Music_Table_Musicas.png)

#### Álbuns
![Tabela Álbuns](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Music_Table_Album.png)

#### Usuários
![Tabela Usuários](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Music_Table_Usuarios.png)

### Relações de Chaves Primárias e Estrangeiras:
- **Artista (PK)** → **Álbum (FK)**: A chave primária da tabela Artista (`artista_id`) é usada como chave estrangeira na tabela Albuns através da restrição de chave estrangeira FK_ArtistaID.
- **Álbum (PK)** → **Música (FK)**: A chave primária da tabela Albuns (`album_id`) é usada como chave estrangeira na tabela Musicas através da restrição de chave estrangeira FK_AlbumID.
- **Artista (PK)** → **Música (FK)**: A chave primária da tabela Artistas (`ArtistaID`) é usada como chave estrangeira na tabela Musicas através da restrição de chave estrangeira FK_ArtistaID.

---

## Banco de Dados da Biblioteca

### Modelo Conceitual

![Modelo Conceitual da Biblioteca](https://github.com/Maarzano/C-digos-C---Curso/blob/bc02c4c822dafedb33b8c1a5d7efdda726749167/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/DiagramaConceitual_db-BibliotecaOruam.png)

#### Descrição do Modelo Conceitual:
O banco de dados da biblioteca foi projetado para gerenciar as informações sobre livros, usuários e aluguel de computadores. O modelo conceitual é composto pelas seguintes entidades principais:

- **Pessoas**: Contém informações sobre os usuários da biblioteca, como nome, CPF e email.
- **Livros**: Armazena dados sobre os livros disponíveis para compra, como título, autor e ano de publicação.
- **Computadores**: Gerencia o aluguel de computadores pelos usuários, armazenando informações como número de série e status.
- **Compras**: Registra as compras realizadas pelos usuários da biblioteca.
- **Aluguéis**: Armazena os aluguéis de computadores, incluindo a data de aluguel e devolução, bem como o preço.
- **Funcionários**: armazena quem é funcionário e seu respectivo cargo.
- **Pendencias**: Armazena possíveis pendencias, quem está com pendencia e a descrição

#### Relações:
- **Pessoa → Compra**: Uma pessoa pode realizar várias compras de livros. (Relacionamento 1:N)
- **Pessoa → Aluguel**: Uma pessoa pode alugar vários computadores. (Relacionamento 1:N)
- **Livro → Compra**: Um livro pode ser comprado várias vezes. (Relacionamento 1:N)
- **Computador → Aluguel**: Um computador pode ser alugado várias vezes. (Relacionamento 1:N)

### Tabelas do Banco de Dados

#### Pessoas
![Tabela Pessoas](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Pessoas.png)

#### Livros
![Tabela Livros](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Livros.png)

#### Computadores
![Tabela Computadores](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Computadores.png)

#### Compras
![Tabela Compras](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Compras.png)

#### Aluguéis
![Tabela Aluguéis](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Aluguel.png)

#### Funcionários
![Tabela Funcionários](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Funcionariosl.png)

#### Pendencias
![Tabela Pendencias](https://github.com/Maarzano/C-digos-C---Curso/blob/adeec8205c6d1a32bbad0ee13f87469befbcee93/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Banco%20de%20dados%20e%20Modelos%20conceituais/Biblioteca_Table_Pendencias.png)

### Relações de Chaves Primárias e Estrangeiras:
- **Pessoas (PK)** → **Compras (FK)**: A chave primária da tabela Pessoas (pessoa_id) é usada como chave estrangeira na tabela Compras através da restrição de chave estrangeira `FK_PessoaID`.
  
- **Livros (PK)** → **Compras (FK)**: A chave primária da tabela Livros (livro_id) é usada como chave estrangeira na tabela Compras através da restrição de chave estrangeira `FK_LivroID`.

- **Pessoas (PK)** → **Alugueis (FK)**: A chave primária da tabela Pessoas (pessoa_id) é usada como chave estrangeira na tabela Alugueis através da restrição de chave estrangeira `FK_PessoaID`.

- **Computadores (PK)** → **Alugueis (FK)**: A chave primária da tabela Computadores (computador_id) é usada como chave estrangeira na tabela Alugueis através da restrição de chave estrangeira `FK_ComputadorID`.

- **Pessoas (PK)** → **Funcionarios (FK)**: A chave primária da tabela Pessoas (pessoa_id) é usada como chave estrangeira na tabela Funcionarios através da restrição de chave estrangeira `FK_PessoaID`.

- **Pessoas (PK)** → **Pendencias (FK)**: A chave primária da tabela Pessoas (pessoa_id) é usada como chave estrangeira na tabela Pendencias através da restrição de chave estrangeira `FK_PessoaID`.

---

## Parte de Arthur Augusto Alves Araujo

### Banco de Dados de Rede Social

#### Modelo Conceitual

![Modelo Conceitual da Rede Social](imagens/modelo_conceitual_rede_social.png)

#### Descrição do Modelo Conceitual:
*Descrever o modelo conceitual e o relacionamento entre as tabelas.*

### Tabelas

#### Tabela de Usuários
![Tabela de Usuários da Rede Social](imagens/tabela_usuarios_rede_social.png)

#### Tabela de Postagens
![Tabela de Postagens da Rede Social](imagens/tabela_postagens_rede_social.png)

#### Tabela de Amigos
![Tabela de Amigos da Rede Social](imagens/tabela_amigos_rede_social.png)

---

### Banco de Dados de Handebol

#### Modelo Conceitual

![Modelo Conceitual de Handebol](https://github.com/Maarzano/C-digos-C---Curso/blob/129a088f6cab88116924de93e5fe154401f154a0/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Imagens/Diagramas/Diagrama_Handebol.png)

#### Descrição do Modelo Conceitual:

* **Partidas:** Representa as partidas, com informações sobre os times envolvidos, data, horário, local, placar, etc.
* **Cadastro de Estádio:** Contém dados sobre os estádios, como nome, localização, capacidade, etc.
* **Cadastro de Usuário:** Armazena informações sobre os usuários do sistema, como nome, email, senha, etc.
* **Cadastro de Time:** Guarda dados sobre os times, como nome, escudo, data de criação, etc.
* **Classificação:** Registra a classificação dos times em um campeonato, com informações sobre posição, vitórias, etc.
* **Cadastro de Elenco:** Armazena dados sobre os jogadores de cada time, como nome, data de nascimento, altura, etc.
* **Campeonato:** Define os campeonatos, com informações sobre nome, ano, etc.
  
#### Relações:

* **Partida - Time:** Uma partida é disputada entre dois times. (Muitos para Muitos)
* **Partida - Estádio:** Uma partida ocorre em um estádio específico. (Um para Muitos)
* **Time - Jogador:** Um time é composto por vários jogadores. (Um para Muitos)
* **Campeonato - Time:** Um campeonato é disputado por vários times. (Um para Muitos)
* **Campeonato - Partida:** Um campeonato é composto por várias partidas. (Um para Muitos)

### Tabelas do Banco de Dados

#### Tabela de Jogadores
![Tabela de Jogadores do Handebol](https://github.com/Maarzano/C-digos-C---Curso/blob/129a088f6cab88116924de93e5fe154401f154a0/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Imagens/TabelasHandebol/Handebol_Jogadores.png)

#### Tabela de Estadio
![Tabela de Partidas do Handebol](https://github.com/Maarzano/C-digos-C---Curso/blob/129a088f6cab88116924de93e5fe154401f154a0/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Imagens/TabelasHandebol/Handebol_Estadio.png)

### Tabela de campeonato
![Tabela do campeonatos](https://github.com/Maarzano/C-digos-C---Curso/blob/129a088f6cab88116924de93e5fe154401f154a0/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Imagens/TabelasHandebol/Handebol_Brasileirasso.png)

### Tabela de ProximasPartidas
![Tabela de proximas partidas](https://github.com/Maarzano/C-digos-C---Curso/blob/129a088f6cab88116924de93e5fe154401f154a0/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Imagens/TabelasHandebol/Handebol_ProximaPartida.png)

### Tabela Classificação
![Tabela de classificação](https://github.com/Maarzano/C-digos-C---Curso/blob/129a088f6cab88116924de93e5fe154401f154a0/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Imagens/TabelasHandebol/Handebol_Tabela.png)

### Tabela de Times
![Tabela de times](https://github.com/Maarzano/C-digos-C---Curso/blob/129a088f6cab88116924de93e5fe154401f154a0/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Imagens/TabelasHandebol/Handebol_Time.png)

### Tabela de Usuários
![Tabela de usuários](https://github.com/Maarzano/C-digos-C---Curso/blob/129a088f6cab88116924de93e5fe154401f154a0/Trabalhos/Trabalho%20Cria%C3%A7%C3%A3o%20dos%20Bancos/Imagens/TabelasHandebol/Handebol_Users.png)

### Relações de Chaves Primárias e Estrangeiras:
* Estadios(PK) → Partidas(FK): A chave primária da tabela Estadios (idEstadio) é usada como chave estrangeira na tabela Partidas através da restrição de chave estrangeira FK_Estadio.
* Partidas(PK), Times(PK) → Partidas_Times(FK): As chaves primárias das tabelas Partidas (idPartida) e Times (idTime) são usadas como chaves estrangeiras na tabela Partidas_Times através das restrições de chave estrangeira FK_Partida e FK_Time.
* Times(PK) → Jogadores(FK): A chave primária da tabela Times (idTime) é usada como chave estrangeira na tabela Jogadores através da restrição de chave estrangeira FK_Time.
* Campeonatos(PK), Times(PK) → Campeonatos_Times(FK): As chaves primárias das tabelas Campeonatos (idCampeonato) e Times (idTime) são usadas como chaves estrangeira


---

## Parte de Gabriel Arthur Ferreira De Jesus

### Banco de Dados de Oficina Mecânica

#### Modelo Conceitual

![Modelo Conceitual da Oficina Mecânica](imagens/modelo_conceitual_oficina_mecanica.png)

#### Descrição do Modelo Conceitual:
*Descrever o modelo conceitual e o relacionamento entre as tabelas.*

### Tabelas

#### Tabela de Clientes
![Tabela de Clientes da Oficina Mecânica](imagens/tabela_clientes_oficina_mecanica.png)

#### Tabela de Serviços
![Tabela de Serviços da Oficina Mecânica](imagens/tabela_servicos_oficina_mecanica.png)

#### Tabela de Veículos
![Tabela de Veículos da Oficina Mecânica](imagens/tabela_veiculos_oficina_mecanica.png)

---

## Conclusão

Neste projeto, conseguimos criar e entender a aplicação prática de modelos relacionais no SQL Server. Cada banco de dados foi estruturado de acordo com as normas da 1ª Forma Normal (1FN) e as tabelas foram inter-relacionadas corretamente com chaves primárias e estrangeiras, seguindo os princípios do modelo relacional.

A contribuição de cada integrante foi essencial para a criação dos bancos de dados e modelos conceituais que formam a base desse trabalho. Com isso, conseguimos representar de forma eficiente os dados de diferentes áreas, como música, biblioteca, rede social, handebol e oficina mecânica.

---

# Como Executar o Projeto

## 1. Instalação do SQL Server
- Certifique-se de que o SQL Server está instalado no seu computador. Caso não esteja, baixe e instale a versão mais recente do [Microsoft SQL Server](https://www.microsoft.com/sql-server/).

## 2. Configuração do Ambiente
- Abra o SQL Server Management Studio (SSMS) e conecte-se ao servidor local ou remoto.

## 3. Criação do Banco de Dados
- Para cada banco de dados (Música, Biblioteca, Rede Social, Handebol e Oficina Mecânica), execute os scripts de criação fornecidos. Eles incluem a definição das tabelas e as restrições de chaves primárias e estrangeiras.
### 1. Bancoo de Dados Músicas
    ```sql
    USE [master]
    GO
    /****** Object:  Database [DB_Musicas]    Script Date: 12/12/2024 18:36:29 ******/
    CREATE DATABASE [DB_Musicas]
     CONTAINMENT = NONE
     ON  PRIMARY 
    ( NAME = N'DB_Musicas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DB_Musicas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
     LOG ON 
    ( NAME = N'DB_Musicas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DB_Musicas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
     WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
    GO
    ALTER DATABASE [DB_Musicas] SET COMPATIBILITY_LEVEL = 150
    GO
    IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
    begin
    EXEC [DB_Musicas].[dbo].[sp_fulltext_database] @action = 'enable'
    end
    GO
    ALTER DATABASE [DB_Musicas] SET ANSI_NULL_DEFAULT OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET ANSI_NULLS OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET ANSI_PADDING OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET ANSI_WARNINGS OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET ARITHABORT OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET AUTO_CLOSE OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET AUTO_SHRINK OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET AUTO_UPDATE_STATISTICS ON 
    GO
    ALTER DATABASE [DB_Musicas] SET CURSOR_CLOSE_ON_COMMIT OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET CURSOR_DEFAULT  GLOBAL 
    GO
    ALTER DATABASE [DB_Musicas] SET CONCAT_NULL_YIELDS_NULL OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET NUMERIC_ROUNDABORT OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET QUOTED_IDENTIFIER OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET RECURSIVE_TRIGGERS OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET  DISABLE_BROKER 
    GO
    ALTER DATABASE [DB_Musicas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET DATE_CORRELATION_OPTIMIZATION OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET TRUSTWORTHY OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET PARAMETERIZATION SIMPLE 
    GO
    ALTER DATABASE [DB_Musicas] SET READ_COMMITTED_SNAPSHOT OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET HONOR_BROKER_PRIORITY OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET RECOVERY SIMPLE 
    GO
    ALTER DATABASE [DB_Musicas] SET  MULTI_USER 
    GO
    ALTER DATABASE [DB_Musicas] SET PAGE_VERIFY CHECKSUM  
    GO
    ALTER DATABASE [DB_Musicas] SET DB_CHAINING OFF 
    GO
    ALTER DATABASE [DB_Musicas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
    GO
    ALTER DATABASE [DB_Musicas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
    GO
    ALTER DATABASE [DB_Musicas] SET DELAYED_DURABILITY = DISABLED 
    GO
    ALTER DATABASE [DB_Musicas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
    GO
    ALTER DATABASE [DB_Musicas] SET QUERY_STORE = OFF
    GO
    USE [DB_Musicas]
    GO
    /****** Object:  Table [dbo].[Albuns]    Script Date: 12/12/2024 18:36:29 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
    CREATE TABLE [dbo].[Albuns](
    	[AlbumID] [int] IDENTITY(1,1) NOT NULL,
    	[Nome] [nvarchar](100) NOT NULL,
    	[ArtistaID] [int] NOT NULL,
    	[AnoLancamento] [int] NULL,
    PRIMARY KEY CLUSTERED 
    (
    	[AlbumID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    /****** Object:  Table [dbo].[Artistas]    Script Date: 12/12/2024 18:36:29 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
    CREATE TABLE [dbo].[Artistas](
    	[ArtistaID] [int] IDENTITY(1,1) NOT NULL,
    	[Nome] [nvarchar](100) NOT NULL,
    	[Nacionalidade] [nvarchar](50) NULL,
    	[CPF] [nvarchar](14) NOT NULL,
    PRIMARY KEY CLUSTERED 
    (
    	[ArtistaID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    /****** Object:  Table [dbo].[Musicas]    Script Date: 12/12/2024 18:36:29 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
    CREATE TABLE [dbo].[Musicas](
    	[MusicaID] [int] IDENTITY(1,1) NOT NULL,
    	[Nome] [nvarchar](100) NOT NULL,
    	[ArtistaID] [int] NOT NULL,
    	[AlbumID] [int] NULL,
    	[Duracao] [time](7) NOT NULL,
    	[Genero] [nvarchar](50) NULL,
    PRIMARY KEY CLUSTERED 
    (
    	[MusicaID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    /****** Object:  Table [dbo].[Usuarios]    Script Date: 12/12/2024 18:36:29 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
    CREATE TABLE [dbo].[Usuarios](
    	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
    	[PrimeiroNome] [nvarchar](100) NOT NULL,
    	[SegundoNome] [nvarchar](100) NOT NULL,
    	[CPF] [nvarchar](14) NOT NULL,
    	[Nacionalidade] [nvarchar](100) NULL,
    	[Email] [nvarchar](100) NOT NULL,
    	[Senha] [nvarchar](255) NOT NULL,
    	[DataCadastro] [date] NOT NULL,
    PRIMARY KEY CLUSTERED 
    (
    	[UsuarioID] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    SET IDENTITY_INSERT [dbo].[Albuns] ON 
    
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (1, N'Anitta', 1, 2015)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (2, N'Tropicalia', 2, 1968)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (3, N'Refavela', 3, 1977)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (4, N'Clima', 4, 2005)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (5, N'Ao Vivo em Goiânia', 5, 2019)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (6, N'Marília Mendonça - Ao Vivo', 6, 2020)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (7, N'Pabllo Vittar', 7, 2017)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (8, N'Milton Nascimento - Ao Vivo', 8, 2008)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (9, N'De Bem Com a Vida', 9, 2014)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (10, N'Fábio Jr. - Ao Vivo', 10, 2002)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (11, N'Chico Buarque - Ao Vivo', 11, 1999)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (12, N'Cem Mil', 12, 2018)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (13, N'Ao Vivo em São Paulo', 13, 2020)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (14, N'O Mundo é um Moinho', 14, 2019)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (15, N'Noite do Sertão', 15, 2018)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (16, N'Jorge e Mateus – Ao Vivo', 16, 2017)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (17, N'Chitãozinho & Xororó – Clássicos', 17, 2016)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (18, N'Maiara e Maraisa - Ao Vivo', 18, 2021)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (19, N'Simone e Simaria - Live', 19, 2020)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (20, N'Verde e Amarelo', 20, 2018)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (21, N'Rita Lee - Ao Vivo', 21, 2019)
    INSERT [dbo].[Albuns] ([AlbumID], [Nome], [ArtistaID], [AnoLancamento]) VALUES (22, N'Roberto Carlos - 60 Anos', 22, 2021)
    SET IDENTITY_INSERT [dbo].[Albuns] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Artistas] ON 
    
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (1, N'Anitta', N'Brasileira', N'123.456.789-01')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (2, N'Caetano Veloso', N'Brasileiro', N'234.567.890-12')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (3, N'Gilberto Gil', N'Brasileiro', N'345.678.901-20')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (4, N'Ivete Sangalo', N'Brasileira', N'456.789.012-34')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (5, N'Luan Santana', N'Brasileiro', N'567.890.123-45')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (6, N'Marília Mendonça', N'Brasileira', N'678.901.234-56')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (7, N'Pablo Vittar', N'Brasileiro', N'789.012.345-67')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (8, N'Milton Nascimento', N'Brasileiro', N'890.123.456-78')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (9, N'Roberta Campos', N'Brasileira', N'901.234.567-89')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (10, N'Fábio Jr.', N'Brasileiro', N'012.345.678-90')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (11, N'Chico Buarque', N'Brasileiro', N'345.678.901-23')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (12, N'Gusttavo Lima', N'Brasileiro', N'234.567.890-34')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (13, N'Marcos e Belutti', N'Brasileiros', N'345.678.901-45')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (14, N'Luan Santana', N'Brasileiro', N'456.789.012-56')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (15, N'Zezé Di Camargo & Luciano', N'Brasileiros', N'567.890.123-67')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (16, N'Jorge e Mateus', N'Brasileiros', N'678.901.234-78')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (17, N'Chitãozinho & Xororó', N'Brasileiros', N'789.012.345-89')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (18, N'Maiara e Maraisa', N'Brasileiras', N'890.123.456-90')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (19, N'Simone e Simaria', N'Brasileiras', N'901.234.567-01')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (20, N'Vanessa da Mata', N'Brasileira', N'012.345.678-11')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (21, N'Rita Lee', N'Brasileira', N'123.456.789-22')
    INSERT [dbo].[Artistas] ([ArtistaID], [Nome], [Nacionalidade], [CPF]) VALUES (22, N'Roberto Carlos', N'Brasileiro', N'234.567.890-33')
    SET IDENTITY_INSERT [dbo].[Artistas] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Musicas] ON 
    
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (1, N'Show das Poderosas', 1, 1, CAST(N'00:03:30' AS Time), N'Pop')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (2, N'O Canto de Dona Sinhá', 2, 2, CAST(N'00:05:00' AS Time), N'MPB')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (3, N'Aquele Abraço', 3, 3, CAST(N'00:04:00' AS Time), N'MPB')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (4, N'Sorte Grande', 4, 4, CAST(N'00:04:20' AS Time), N'Axé')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (5, N'Esquema Preferido', 5, 5, CAST(N'00:03:15' AS Time), N'Sertanejo')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (6, N'Infiel', 6, 6, CAST(N'00:04:45' AS Time), N'Sertanejo')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (7, N'K.O.', 7, 7, CAST(N'00:03:40' AS Time), N'Pop')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (8, N'Maria Maria', 8, 8, CAST(N'00:04:10' AS Time), N'MPB')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (9, N'De Bem Com a Vida', 9, 9, CAST(N'00:04:30' AS Time), N'Sertanejo')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (10, N'Alma Gêmea', 10, 10, CAST(N'00:03:25' AS Time), N'Romântico')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (11, N'Construção', 11, 11, CAST(N'00:05:10' AS Time), N'MPB')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (12, N'Amor de Verdade', 12, 12, CAST(N'00:03:10' AS Time), N'Pop')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (13, N'Música Boa', 13, 13, CAST(N'00:04:00' AS Time), N'Pop')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (14, N'A Vida é Boa', 14, 14, CAST(N'00:04:30' AS Time), N'MPB')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (15, N'Chorando Se Foi', 15, 15, CAST(N'00:05:20' AS Time), N'Sertanejo')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (16, N'Faz Parte', 16, 16, CAST(N'00:03:50' AS Time), N'Sertanejo')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (17, N'Briga Feia', 17, 17, CAST(N'00:03:30' AS Time), N'Sertanejo')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (18, N'Morrendo de Saudade', 18, 18, CAST(N'00:04:15' AS Time), N'Sertanejo')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (19, N'Querendo Te Ver', 19, 19, CAST(N'00:03:55' AS Time), N'Pop')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (20, N'Ritmo Perfeito', 20, 20, CAST(N'00:03:40' AS Time), N'Axé')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (21, N'Deixa a Vida Me Levar', 21, 21, CAST(N'00:04:00' AS Time), N'MPB')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (22, N'Detalhes', 22, 22, CAST(N'00:04:25' AS Time), N'Romântico')
    INSERT [dbo].[Musicas] ([MusicaID], [Nome], [ArtistaID], [AlbumID], [Duracao], [Genero]) VALUES (23, N'paratodo(Ao Vivo)', 11, 11, CAST(N'00:03:15' AS Time), NULL)
    SET IDENTITY_INSERT [dbo].[Musicas] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Usuarios] ON 
    
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (1, N'Carlos', N'Silva', N'123.456.789-00', N'Brasileiro', N'carlos.silva@email.com', N'senha123', CAST(N'2023-01-10' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (2, N'Maria', N'Oliveira', N'987.654.321-00', N'Brasileira', N'maria.oliveira@email.com', N'senha456', CAST(N'2023-02-15' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (3, N'João', N'Pereira', N'111.222.333-44', N'Brasileiro', N'joao.pereira@email.com', N'senha789', CAST(N'2023-03-20' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (4, N'Ana', N'Costa', N'444.555.666-77', N'Brasileira', N'ana.costa@email.com', N'senha321', CAST(N'2023-04-01' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (5, N'Ricardo', N'Souza', N'555.666.777-88', N'Brasileiro', N'ricardo.souza@email.com', N'senha654', CAST(N'2023-05-10' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (6, N'Fernanda', N'Santos', N'666.777.888-99', N'Brasileira', N'fernanda.santos@email.com', N'senha987', CAST(N'2023-06-25' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (7, N'Juliana', N'Martins', N'777.888.999-00', N'Brasileira', N'juliana.martins@email.com', N'senha159', CAST(N'2023-07-30' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (8, N'Paulo', N'Lima', N'888.999.000-11', N'Brasileiro', N'paulo.lima@email.com', N'senha753', CAST(N'2023-08-18' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (9, N'Luana', N'Nascimento', N'999.000.111-22', N'Brasileira', N'luana.nascimento@email.com', N'senha852', CAST(N'2023-09-05' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (10, N'Carlos', N'Mendes', N'000.111.222-33', N'Brasileiro', N'carlos.mendes@email.com', N'senha963', CAST(N'2023-10-12' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (11, N'Claudia', N'Ferreira', N'222.333.444-55', N'Brasileira', N'claudia.ferreira@email.com', N'senha321', CAST(N'2023-12-01' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (12, N'Rafael', N'Almeida', N'333.444.555-66', N'Brasileiro', N'rafael.almeida@email.com', N'senha111', CAST(N'2023-11-01' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (13, N'Beatriz', N'Silveira', N'444.555.666-11', N'Brasileira', N'beatriz.silveira@email.com', N'senha222', CAST(N'2023-11-05' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (14, N'Lucas', N'Gomes', N'555.666.777-22', N'Brasileiro', N'lucas.gomes@email.com', N'senha333', CAST(N'2023-11-10' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (15, N'Juliano', N'Rodrigues', N'666.777.888-33', N'Brasileiro', N'juliano.rodrigues@email.com', N'senha444', CAST(N'2023-11-15' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (16, N'Vanessa', N'Martins', N'777.888.999-44', N'Brasileira', N'vanessa.martins@email.com', N'senha555', CAST(N'2023-11-20' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (17, N'Eduardo', N'Nascimento', N'888.999.000-55', N'Brasileiro', N'eduardo.nascimento@email.com', N'senha666', CAST(N'2023-11-25' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (18, N'Marcos', N'Souza', N'999.000.111-66', N'Brasileiro', N'marcos.souza@email.com', N'senha777', CAST(N'2023-12-05' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (19, N'Carla', N'Pereira', N'000.111.222-44', N'Brasileira', N'carla.pereira@email.com', N'senha888', CAST(N'2023-12-10' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (20, N'André', N'Costa', N'111.222.333-11', N'Brasileiro', N'andre.costa@email.com', N'senha999', CAST(N'2023-12-15' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (21, N'Tatiane', N'Oliveira', N'222.333.444-66', N'Brasileira', N'tatiane.oliveira@email.com', N'senha000', CAST(N'2023-12-20' AS Date))
    INSERT [dbo].[Usuarios] ([UsuarioID], [PrimeiroNome], [SegundoNome], [CPF], [Nacionalidade], [Email], [Senha], [DataCadastro]) VALUES (22, N'Felipe', N'Lima', N'333.444.555-77', N'Brasileiro', N'felipe.lima@email.com', N'senha1234', CAST(N'2023-12-25' AS Date))
    SET IDENTITY_INSERT [dbo].[Usuarios] OFF
    GO
    SET ANSI_PADDING ON
    GO
    /****** Object:  Index [UQ__Artistas__C1F89731CC1B64BD]    Script Date: 12/12/2024 18:36:29 ******/
    ALTER TABLE [dbo].[Artistas] ADD UNIQUE NONCLUSTERED 
    (
    	[CPF] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    GO
    SET ANSI_PADDING ON
    GO
    /****** Object:  Index [UQ__Usuarios__A9D105340812CC58]    Script Date: 12/12/2024 18:36:29 ******/
    ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
    (
    	[Email] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    GO
    SET ANSI_PADDING ON
    GO
    /****** Object:  Index [UQ__Usuarios__C1F89731F5303FDD]    Script Date: 12/12/2024 18:36:29 ******/
    ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
    (
    	[CPF] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    GO
    ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT (getdate()) FOR [DataCadastro]
    GO
    ALTER TABLE [dbo].[Albuns]  WITH CHECK ADD  CONSTRAINT [FK_ArtistaID] FOREIGN KEY([ArtistaID])
    REFERENCES [dbo].[Artistas] ([ArtistaID])
    GO
    ALTER TABLE [dbo].[Albuns] CHECK CONSTRAINT [FK_ArtistaID]
    GO
    ALTER TABLE [dbo].[Musicas]  WITH CHECK ADD  CONSTRAINT [FK_AlbumID] FOREIGN KEY([AlbumID])
    REFERENCES [dbo].[Albuns] ([AlbumID])
    GO
    ALTER TABLE [dbo].[Musicas] CHECK CONSTRAINT [FK_AlbumID]
    GO
    ALTER TABLE [dbo].[Musicas]  WITH CHECK ADD  CONSTRAINT [FK_Musicas_ArtistaID] FOREIGN KEY([ArtistaID])
    REFERENCES [dbo].[Artistas] ([ArtistaID])
    GO
    ALTER TABLE [dbo].[Musicas] CHECK CONSTRAINT [FK_Musicas_ArtistaID]
    GO
    USE [master]
    GO
    ALTER DATABASE [DB_Musicas] SET  READ_WRITE 
    GO
---
## 2. Banco de Dados Biblioteca
    ```sql
    USE [master]
    GO
    /****** Object:  Database [DB_BibliotecaOruam]    Script Date: 12/12/2024 18:35:51 ******/
    CREATE DATABASE [DB_BibliotecaOruam]
     CONTAINMENT = NONE
     ON  PRIMARY 
    ( NAME = N'DB_BibliotecaOruam', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DB_BibliotecaOruam.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
     LOG ON 
    ( NAME = N'DB_BibliotecaOruam_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DB_BibliotecaOruam_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
     WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET COMPATIBILITY_LEVEL = 150
    GO
    IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
    begin
    EXEC [DB_BibliotecaOruam].[dbo].[sp_fulltext_database] @action = 'enable'
    end
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET ANSI_NULL_DEFAULT OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET ANSI_NULLS OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET ANSI_PADDING OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET ANSI_WARNINGS OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET ARITHABORT OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET AUTO_CLOSE OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET AUTO_SHRINK OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET AUTO_UPDATE_STATISTICS ON 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET CURSOR_CLOSE_ON_COMMIT OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET CURSOR_DEFAULT  GLOBAL 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET CONCAT_NULL_YIELDS_NULL OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET NUMERIC_ROUNDABORT OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET QUOTED_IDENTIFIER OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET RECURSIVE_TRIGGERS OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET  DISABLE_BROKER 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET DATE_CORRELATION_OPTIMIZATION OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET TRUSTWORTHY OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET PARAMETERIZATION SIMPLE 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET READ_COMMITTED_SNAPSHOT OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET HONOR_BROKER_PRIORITY OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET RECOVERY SIMPLE 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET  MULTI_USER 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET PAGE_VERIFY CHECKSUM  
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET DB_CHAINING OFF 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET DELAYED_DURABILITY = DISABLED 
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET ACCELERATED_DATABASE_RECOVERY = OFF  
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET QUERY_STORE = OFF
    GO
    USE [DB_BibliotecaOruam]
    GO
    /****** Object:  Table [dbo].[Alugueis]    Script Date: 12/12/2024 18:35:51 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
    CREATE TABLE [dbo].[Alugueis](
    	[aluguel_id] [int] IDENTITY(1,1) NOT NULL,
    	[pessoa_id] [int] NULL,
    	[computador_id] [int] NULL,
    	[data_aluguel] [date] NULL,
    	[data_devolucao] [date] NULL,
    	[preco] [decimal](10, 2) NULL,
    PRIMARY KEY CLUSTERED 
    (
    	[aluguel_id] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    /****** Object:  Table [dbo].[Compras]    Script Date: 12/12/2024 18:35:51 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
    CREATE TABLE [dbo].[Compras](
    	[compra_id] [int] IDENTITY(1,1) NOT NULL,
    	[pessoa_id] [int] NULL,
    	[livro_id] [int] NULL,
    	[data_compra] [date] NULL,
    	[quantidade] [int] NULL,
    PRIMARY KEY CLUSTERED 
    (
    	[compra_id] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    /****** Object:  Table [dbo].[Computadores]    Script Date: 12/12/2024 18:35:51 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
    CREATE TABLE [dbo].[Computadores](
    	[computador_id] [int] IDENTITY(1,1) NOT NULL,
    	[numero_serie] [varchar](50) NULL,
    	[status] [varchar](20) NULL,
    PRIMARY KEY CLUSTERED 
    (
    	[computador_id] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    /****** Object:  Table [dbo].[Funcionarios]    Script Date: 12/12/2024 18:35:51 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
    CREATE TABLE [dbo].[Funcionarios](
    	[funcionario_id] [int] IDENTITY(1,1) NOT NULL,
    	[pessoa_id] [int] NULL,
    	[cargo] [varchar](50) NULL,
    PRIMARY KEY CLUSTERED 
    (
    	[funcionario_id] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    /****** Object:  Table [dbo].[Livros]    Script Date: 12/12/2024 18:35:51 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
    CREATE TABLE [dbo].[Livros](
    	[livro_id] [int] IDENTITY(1,1) NOT NULL,
    	[titulo] [varchar](255) NULL,
    	[autor] [varchar](100) NULL,
    	[editora] [varchar](100) NULL,
    	[ano_publicacao] [int] NULL,
    	[status] [varchar](20) NULL,
    PRIMARY KEY CLUSTERED 
    (
    	[livro_id] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    /****** Object:  Table [dbo].[Pendencias]    Script Date: 12/12/2024 18:35:51 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
    CREATE TABLE [dbo].[Pendencias](
    	[pendencia_id] [int] IDENTITY(1,1) NOT NULL,
    	[pessoa_id] [int] NULL,
    	[descricao] [varchar](255) NULL,
    	[status] [varchar](20) NULL,
    	[data_pendencia] [date] NULL,
    PRIMARY KEY CLUSTERED 
    (
    	[pendencia_id] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    /****** Object:  Table [dbo].[Pessoas]    Script Date: 12/12/2024 18:35:52 ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
    CREATE TABLE [dbo].[Pessoas](
    	[pessoa_id] [int] IDENTITY(1,1) NOT NULL,
    	[nome] [varchar](100) NULL,
    	[cpf] [varchar](14) NULL,
    	[tipo] [varchar](20) NULL,
    	[email] [varchar](100) NULL,
    	[telefone] [varchar](15) NULL,
    	[endereço] [varchar](255) NULL,
    	[data_nascimento] [date] NULL,
    PRIMARY KEY CLUSTERED 
    (
    	[pessoa_id] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    SET IDENTITY_INSERT [dbo].[Alugueis] ON 
    
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (1, 1, 1, CAST(N'2023-05-10' AS Date), CAST(N'2023-05-12' AS Date), CAST(10.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (2, 2, 2, CAST(N'2023-06-01' AS Date), CAST(N'2023-06-03' AS Date), CAST(15.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (3, 3, 4, CAST(N'2023-07-01' AS Date), CAST(N'2023-07-05' AS Date), CAST(12.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (4, 4, 3, CAST(N'2023-08-01' AS Date), CAST(N'2023-08-10' AS Date), CAST(20.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (6, 35, 1, CAST(N'2023-06-15' AS Date), CAST(N'2023-06-17' AS Date), CAST(10.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (7, 36, 2, CAST(N'2023-07-10' AS Date), CAST(N'2023-07-12' AS Date), CAST(15.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (8, 37, 3, CAST(N'2023-08-01' AS Date), CAST(N'2023-08-05' AS Date), CAST(12.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (9, 38, 4, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-10' AS Date), CAST(20.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (10, 39, 5, CAST(N'2023-10-10' AS Date), CAST(N'2023-10-12' AS Date), CAST(10.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (11, 40, 6, CAST(N'2023-10-15' AS Date), CAST(N'2023-10-20' AS Date), CAST(25.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (12, 41, 7, CAST(N'2023-11-01' AS Date), CAST(N'2023-11-03' AS Date), CAST(15.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (13, 42, 8, CAST(N'2023-11-05' AS Date), CAST(N'2023-11-10' AS Date), CAST(12.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (14, 43, 9, CAST(N'2023-11-10' AS Date), CAST(N'2023-11-12' AS Date), CAST(18.00 AS Decimal(10, 2)))
    INSERT [dbo].[Alugueis] ([aluguel_id], [pessoa_id], [computador_id], [data_aluguel], [data_devolucao], [preco]) VALUES (15, 44, 10, CAST(N'2023-11-20' AS Date), CAST(N'2023-11-22' AS Date), CAST(20.00 AS Decimal(10, 2)))
    SET IDENTITY_INSERT [dbo].[Alugueis] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Compras] ON 
    
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (1, 1, 1, CAST(N'2023-05-10' AS Date), 1)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (2, 2, 2, CAST(N'2023-05-15' AS Date), 1)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (3, 3, 3, CAST(N'2023-06-20' AS Date), 2)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (4, 4, 4, CAST(N'2023-07-25' AS Date), 1)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (6, 35, 1, CAST(N'2023-05-12' AS Date), 1)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (7, 36, 2, CAST(N'2023-05-15' AS Date), 1)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (8, 37, 3, CAST(N'2023-06-01' AS Date), 2)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (9, 38, 4, CAST(N'2023-07-12' AS Date), 1)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (10, 39, 5, CAST(N'2023-07-15' AS Date), 1)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (11, 40, 6, CAST(N'2023-08-20' AS Date), 1)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (12, 41, 7, CAST(N'2023-09-01' AS Date), 2)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (13, 42, 8, CAST(N'2023-09-15' AS Date), 1)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (14, 43, 9, CAST(N'2023-10-10' AS Date), 1)
    INSERT [dbo].[Compras] ([compra_id], [pessoa_id], [livro_id], [data_compra], [quantidade]) VALUES (15, 44, 10, CAST(N'2023-10-15' AS Date), 1)
    SET IDENTITY_INSERT [dbo].[Compras] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Computadores] ON 
    
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (1, N'ABC12345', N'Disponível')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (2, N'DEF67890', N'Em uso')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (3, N'GHI11223', N'Em manutenção')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (4, N'JKL33445', N'Disponível')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (5, N'MNO11223', N'Disponível')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (6, N'PQR22334', N'Em uso')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (7, N'STU33445', N'Em manutenção')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (8, N'VWX44556', N'Disponível')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (9, N'YZR55667', N'Em uso')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (10, N'ABC66778', N'Disponível')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (11, N'DEF77889', N'Em manutenção')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (12, N'GHI88990', N'Disponível')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (13, N'JKL99001', N'Em uso')
    INSERT [dbo].[Computadores] ([computador_id], [numero_serie], [status]) VALUES (14, N'MNO11234', N'Disponível')
    SET IDENTITY_INSERT [dbo].[Computadores] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Funcionarios] ON 
    
    INSERT [dbo].[Funcionarios] ([funcionario_id], [pessoa_id], [cargo]) VALUES (1, 2, N'Bibliotecário')
    INSERT [dbo].[Funcionarios] ([funcionario_id], [pessoa_id], [cargo]) VALUES (2, 4, N'Assistente Administrativo')
    INSERT [dbo].[Funcionarios] ([funcionario_id], [pessoa_id], [cargo]) VALUES (3, 35, N'Assistente Administrativo')
    INSERT [dbo].[Funcionarios] ([funcionario_id], [pessoa_id], [cargo]) VALUES (4, 36, N'Bibliotecário')
    INSERT [dbo].[Funcionarios] ([funcionario_id], [pessoa_id], [cargo]) VALUES (5, 37, N'Assistente de TI')
    INSERT [dbo].[Funcionarios] ([funcionario_id], [pessoa_id], [cargo]) VALUES (6, 38, N'Supervisor de Bibliotecas')
    INSERT [dbo].[Funcionarios] ([funcionario_id], [pessoa_id], [cargo]) VALUES (7, 39, N'Coordenador de Cursos')
    INSERT [dbo].[Funcionarios] ([funcionario_id], [pessoa_id], [cargo]) VALUES (8, 40, N'Assistente de Marketing')
    INSERT [dbo].[Funcionarios] ([funcionario_id], [pessoa_id], [cargo]) VALUES (9, 41, N'Supervisor de TI')
    INSERT [dbo].[Funcionarios] ([funcionario_id], [pessoa_id], [cargo]) VALUES (10, 42, N'Analista de Sistemas')
    INSERT [dbo].[Funcionarios] ([funcionario_id], [pessoa_id], [cargo]) VALUES (11, 43, N'Coordenador de TI')
    INSERT [dbo].[Funcionarios] ([funcionario_id], [pessoa_id], [cargo]) VALUES (12, 44, N'Analista de Marketing')
    SET IDENTITY_INSERT [dbo].[Funcionarios] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Livros] ON 
    
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (1, N'O Alquimista', N'Paulo Coelho', N'HarperCollins', 1988, N'Disponível')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (2, N'1984', N'George Orwell', N'Companhia das Letras', 1949, N'Emprestado')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (3, N'Dom Casmurro', N'Machado de Assis', N'Editora Abril', 1899, N'Disponível')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (4, N'O Senhor dos Anéis', N'J.R.R. Tolkien', N'HarperCollins', 1954, N'Disponível')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (5, N'A Arte da Guerra', N'Sun Tzu', N'Editora ABC', 500, N'Disponível')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (6, N'O Príncipe', N'Nicolau Maquiavel', N'Editora XYZ', 1532, N'Emprestado')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (7, N'O Gene Egoísta', N'Richard Dawkins', N'Editora DEF', 1976, N'Disponível')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (8, N'Sapiens: Uma Breve História da Humanidade', N'Yuval Noah Harari', N'Editora GHI', 2011, N'Disponível')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (9, N'O Pequeno Príncipe', N'Antoine de Saint-Exupéry', N'Editora JKL', 1943, N'Emprestado')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (10, N'A Revolução dos Bichos', N'George Orwell', N'Editora MNO', 1945, N'Disponível')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (11, N'Os Miseráveis', N'Victor Hugo', N'Editora PQR', 1862, N'Disponível')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (12, N'Fahrenheit 451', N'Ray Bradbury', N'Editora STU', 1953, N'Disponível')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (13, N'O Hobbit', N'J.R.R. Tolkien', N'Editora VWX', 1937, N'Disponível')
    INSERT [dbo].[Livros] ([livro_id], [titulo], [autor], [editora], [ano_publicacao], [status]) VALUES (14, N'A Caverna', N'José Saramago', N'Editora YZR', 2001, N'Emprestado')
    SET IDENTITY_INSERT [dbo].[Livros] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Pendencias] ON 
    
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (1, 1, N'Devolução do livro "1984" pendente', N'Em aberto', CAST(N'2023-05-20' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (2, 2, N'Multa por atraso na devolução do livro "Dom Casmurro"', N'Resolvido', CAST(N'2023-06-01' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (3, 3, N'Livro "O Senhor dos Anéis" danificado', N'Em aberto', CAST(N'2023-07-15' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (4, 4, N'Atraso no pagamento do aluguel do computador', N'Em aberto', CAST(N'2023-08-05' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (6, 35, N'Pagamento pendente de aluguel de computador', N'Pendente', CAST(N'2023-06-18' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (7, 36, N'Livro "O Príncipe" não devolvido', N'Pendente', CAST(N'2023-07-20' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (8, 37, N'Multa por atraso na devolução do livro', N'Pendente', CAST(N'2023-08-07' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (9, 38, N'Falta de documentação necessária para cadastro', N'Pendente', CAST(N'2023-09-12' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (10, 39, N'Problema de pagamento de mensalidade', N'Pendente', CAST(N'2023-10-13' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (11, 40, N'Equipamento de TI não devolvido após o prazo', N'Pendente', CAST(N'2023-10-22' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (12, 41, N'Multa por danificação de livro', N'Pendente', CAST(N'2023-11-03' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (13, 42, N'Pagamento pendente de aluguel de computador', N'Pendente', CAST(N'2023-11-05' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (14, 43, N'Livro "Sapiens" perdido', N'Pendente', CAST(N'2023-11-14' AS Date))
    INSERT [dbo].[Pendencias] ([pendencia_id], [pessoa_id], [descricao], [status], [data_pendencia]) VALUES (15, 44, N'Atraso no retorno do equipamento de TI', N'Pendente', CAST(N'2023-11-23' AS Date))
    SET IDENTITY_INSERT [dbo].[Pendencias] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Pessoas] ON 
    
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (1, N'Maria Silva', N'123.456.789-01', N'Aluno', N'maria.silva@email.com', N'21987654321', N'Rua A, 123', CAST(N'1995-08-20' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (2, N'João Santos', N'987.654.321-00', N'Funcionário', N'joao.santos@email.com', N'21987654322', N'Avenida B, 456', CAST(N'1982-03-15' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (3, N'Carlos Oliveira', N'111.222.333-44', N'Aluno', N'carlos.oliveira@email.com', N'21987654323', N'Rua C, 789', CAST(N'1993-10-10' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (4, N'Ana Costa', N'444.555.666-77', N'Funcionario', N'ana.costa@email.com', N'21987654324', N'Praça D, 101', CAST(N'1985-06-05' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (35, N'Luiza Martins', N'222.333.344-55', N'Aluno', N'luiza.martins@email.com', N'21987654325', N'Rua E, 321', CAST(N'2000-02-14' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (36, N'Eduardo Lima', N'333.444.235-66', N'Funcionario', N'eduardo.lima@email.com', N'21987654326', N'Avenida F, 654', CAST(N'1988-12-01' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (37, N'Beatriz Almeida', N'555.006.777-88', N'Aluno', N'beatriz.almeida@email.com', N'21987654327', N'Rua G, 987', CAST(N'1997-05-30' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (38, N'Ricardo Souza', N'777.848.999-00', N'Aluno', N'ricardo.souza@email.com', N'21987654328', N'Rua H, 654', CAST(N'1995-04-15' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (39, N'Fernanda Rocha', N'888.999.000-11', N'Funcionario', N'fernanda.rocha@email.com', N'21987654329', N'Praça I, 321', CAST(N'1980-07-22' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (40, N'Gabriel Pereira', N'111.222.763-44', N'Aluno', N'gabriel.pereira@email.com', N'21987654330', N'Rua J, 543', CAST(N'1999-09-10' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (41, N'Larissa Costa', N'999.111.222-33', N'Funcionario', N'larissa.costa@email.com', N'21987654331', N'Avenida K, 876', CAST(N'1983-02-20' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (42, N'André Oliveira', N'333.434.555-66', N'Aluno', N'andre.oliveira@email.com', N'21987654332', N'Rua L, 321', CAST(N'1996-11-25' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (43, N'Carolina Rocha', N'666.707.888-99', N'Aluno', N'carolina.rocha@email.com', N'21987654333', N'Avenida M, 987', CAST(N'2002-08-12' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (44, N'Bruna Almeida', N'404.555.666-77', N'Funcionario', N'bruna.almeida@email.com', N'21987654334', N'Praça N, 654', CAST(N'1987-03-30' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (45, N'Pedro Costa', N'555.606.777-88', N'Aluno', N'pedro.costa@email.com', N'21987654335', N'Rua O, 123', CAST(N'1994-12-05' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (46, N'Marcelo Martins', N'202.333.444-55', N'Funcionario', N'marcelo.martins@email.com', N'21987654336', N'Avenida P, 456', CAST(N'1981-06-18' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (47, N'Ricardo Almeida', N'333.904.555-66', N'Aluno', N'ricardo.almeida@email.com', N'21987654337', N'Rua Q, 789', CAST(N'1998-01-10' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (48, N'Simone Oliveira', N'111.666.333-44', N'Funcionario', N'simone.oliveira@email.com', N'21987654338', N'Rua R, 543', CAST(N'1984-05-25' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (49, N'Victor Costa', N'999.111.202-33', N'Aluno', N'victor.costa@email.com', N'21987654339', N'Rua S, 123', CAST(N'2001-09-18' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (50, N'Juliana Rocha', N'838.999.000-11', N'Funcionario', N'juliana.rocha@email.com', N'21987654340', N'Praça T, 321', CAST(N'1985-10-10' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (51, N'Thiago Santos', N'777.858.999-00', N'Aluno', N'thiago.santos@email.com', N'21987654341', N'Rua U, 987', CAST(N'1997-07-22' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (52, N'Mariana Almeida', N'565.666.777-88', N'Funcionario', N'mariana.almeida@email.com', N'21987654342', N'Avenida V, 876', CAST(N'1982-02-14' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (53, N'Rodrigo Lima', N'272.333.444-55', N'Aluno', N'rodrigo.lima@email.com', N'21987654343', N'Rua W, 654', CAST(N'1993-12-05' AS Date))
    INSERT [dbo].[Pessoas] ([pessoa_id], [nome], [cpf], [tipo], [email], [telefone], [endereço], [data_nascimento]) VALUES (54, N'Laura Pereira', N'044.555.666-77', N'Funcionario', N'laura.pereira@email.com', N'21987654344', N'Rua X, 123', CAST(N'1986-11-15' AS Date))
    SET IDENTITY_INSERT [dbo].[Pessoas] OFF
    GO
    SET ANSI_PADDING ON
    GO
    /****** Object:  Index [UQ__Computad__D8D7353C57708EF0]    Script Date: 12/12/2024 18:35:52 ******/
    ALTER TABLE [dbo].[Computadores] ADD UNIQUE NONCLUSTERED 
    (
    	[numero_serie] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    GO
    SET ANSI_PADDING ON
    GO
    /****** Object:  Index [UQ__Pessoas__AB6E616441116975]    Script Date: 12/12/2024 18:35:52 ******/
    ALTER TABLE [dbo].[Pessoas] ADD UNIQUE NONCLUSTERED 
    (
    	[email] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    GO
    SET ANSI_PADDING ON
    GO
    /****** Object:  Index [UQ__Pessoas__D836E71F04109FDD]    Script Date: 12/12/2024 18:35:52 ******/
    ALTER TABLE [dbo].[Pessoas] ADD UNIQUE NONCLUSTERED 
    (
    	[cpf] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
    GO
    ALTER TABLE [dbo].[Alugueis]  WITH CHECK ADD FOREIGN KEY([computador_id])
    REFERENCES [dbo].[Computadores] ([computador_id])
    GO
    ALTER TABLE [dbo].[Alugueis]  WITH CHECK ADD FOREIGN KEY([pessoa_id])
    REFERENCES [dbo].[Pessoas] ([pessoa_id])
    GO
    ALTER TABLE [dbo].[Compras]  WITH CHECK ADD FOREIGN KEY([livro_id])
    REFERENCES [dbo].[Livros] ([livro_id])
    GO
    ALTER TABLE [dbo].[Compras]  WITH CHECK ADD FOREIGN KEY([pessoa_id])
    REFERENCES [dbo].[Pessoas] ([pessoa_id])
    GO
    ALTER TABLE [dbo].[Funcionarios]  WITH CHECK ADD FOREIGN KEY([pessoa_id])
    REFERENCES [dbo].[Pessoas] ([pessoa_id])
    GO
    ALTER TABLE [dbo].[Pendencias]  WITH CHECK ADD FOREIGN KEY([pessoa_id])
    REFERENCES [dbo].[Pessoas] ([pessoa_id])
    GO
    USE [master]
    GO
    ALTER DATABASE [DB_BibliotecaOruam] SET  READ_WRITE 
    GO
---
## 3. Banco de Dados Handebol
    ```sql
    GO
    
    CREATE DATABASE CampHandebol;
    
    GO
    
    USE CampHandebol;
    
    GO
    
    /*Criação da Tabela de Cadastro do Time*/
    CREATE TABLE CadastroTime (
        IDTime INT IDENTITY (1,1) PRIMARY KEY,
        NomeTime VARCHAR(100),
        EscudoTime VARCHAR(255),
        DataCriacao DATE,
        CapitaoDoTime VARCHAR(100)
    );
    
    GO
    
    INSERT INTO CadastroTime (NomeTime, EscudoTime, DataCriacao, CapitaoDoTime)
    VALUES
    ('Tigres da Vila', 'escudos/tigres_vila.png', '2020-01-01', 'João Silva'),
    ('Águias do Norte', 'escudos/aguias_norte.png', '2021-02-15', 'Carlos Souza'),
    ('Leões da Serra', 'escudos/leoes_serra.png', '2019-03-10', 'Maria Oliveira'),
    ('Falcões do Sul', 'escudos/falcoes_sul.png', '2018-04-20', 'Ana Santos'),
    ('Panteras de Ouro', 'escudos/panteras_ouro.png', '2022-05-30', 'Pedro Lima'),
    ('Lobos do Oeste', 'escudos/lobos_oeste.png', '2020-06-25', 'Lucas Costa'),
    ('Raposas do Vale', 'escudos/raposas_vale.png', '2017-07-15', 'Beatriz Rocha'),
    ('Gaviões do Cerrado', 'escudos/gavioes_cerrado.png', '2021-08-05', 'Fernanda Dias'),
    ('Onças do Litoral', 'escudos/oncas_litoral.png', '2023-09-10', 'André Almeida'),
    ('Tubarões da Praia', 'escudos/tubaroes_praia.png', '2016-10-01', 'Juliana Martins');
    
    GO
    
    /*Criação da Tabela de Cadastro do Elenco*/
    CREATE TABLE CadastroElenco (
        IDJogador INT IDENTITY (1,1) PRIMARY KEY,
        NomeJogador VARCHAR(100),
        DataNascimentoJogador DATE,
        AlturaJogador INT,
        GeneroJogador VARCHAR (20),
    IDTime int not null,
    CONSTRAINT FK_CadastroElenco_CadastroTime FOREIGN KEY (IDTime) REFERENCES CadastroTime(IDTime)
    );
    
    GO
    
    INSERT INTO CadastroElenco (IDTime, NomeJogador, DataNascimentoJogador, AlturaJogador, GeneroJogador)
    VALUES
    (1,'João Silva', '1990-01-01', 185, 'Masculino'),
    (1,'Carlos Souza', '1992-02-02', 190, 'Masculino'),
    (4,'Maria Oliveira', '1995-03-03', 175, 'Feminino'),
    (6,'Ana Santos', '1991-04-04', 168, 'Feminino'),
    (7,'Pedro Lima', '1998-05-05', 182, 'Masculino'),
    (2,'Lucas Costa', '2000-06-06', 188, 'Masculino'),
    (8,'Beatriz Rocha', '1997-07-07', 172, 'Feminino'),
    (3,'Fernanda Dias', '1996-08-08', 180, 'Feminino'),
    (5,'André Almeida', '1993-09-09', 183, 'Masculino'),
    (9,'Juliana Martins', '1989-10-10', 170, 'Feminino');
    
    GO
    
    /*Criação da Tabela de Cadastro de Estádio*/
    CREATE TABLE CadastroEstadio (
        IDEstadio INT IDENTITY (1,1) PRIMARY KEY ,
        NomeEstadio VARCHAR(100),
        Lugar VARCHAR(150),
        CapacidadeEstadio INT,
        DonoEstadio VARCHAR(100)
    );
    
    GO
    
    INSERT INTO CadastroEstadio (NomeEstadio, Lugar, CapacidadeEstadio, DonoEstadio) VALUES
    ('Arena Tigre', 'São Paulo', 20000, 'Tigres da Vila'),
    ('Estádio Águia Azul', 'Manaus', 25000, 'Águias do Norte'),
    ('Arena dos Leões', 'Belo Horizonte', 30000, 'Leões da Serra'),
    ('Estádio Falcão Branco', 'Porto Alegre', 15000, 'Falcões do Sul'),
    ('Arena Pantera Negra', 'Rio de Janeiro', 18000, 'Panteras de Ouro'),
    ('Estádio Lobo Cinzento', 'Curitiba', 22000, 'Lobos do Oeste'),
    ('Arena Raposa Dourada', 'Goiânia', 27000, 'Raposas do Vale'),
    ('Estádio Gavião Real', 'Brasília', 19000, 'Gaviões do Cerrado'),
    ('Arena Onça Pintada', 'Fortaleza', 24000, 'Onças do Litoral'),
    ('Estádio Tubarão Branco', 'Salvador', 26000, 'Tubarões da Praia');
    
    GO
    
    /*Criação da Tabela de Cadastro do Usuário*/
    CREATE TABLE CadastroUsuario (
        IDUsuario INT IDENTITY (1,1)  PRIMARY KEY,
        EmailUser VARCHAR(150),
        SenhaUser VARCHAR(255),
        NomeUser VARCHAR(100),
        DataNascimentoUser DATE,
        CPFUser CHAR(11),
        NumeroCelularUser VARCHAR(15)
    );
    
    GO
    
    INSERT INTO CadastroUsuario (EmailUser, SenhaUser, NomeUser, DataNascimentoUser, CPFUser, NumeroCelularUser)
    VALUES
    ('paula.martins@example.com', 'senhaabc123', 'Paula Martins', '1982-04-11', '12398745601', '11922334455'),
    ('guilherme.silva@example.com', 'guilherme321', 'Guilherme Silva', '1993-07-30', '98765432100', '11933445566'),
    ('clarice.souza@example.com', 'clarice456', 'Clarice Souza', '1991-01-23', '14725836902', '11944556677'),
    ('thiago.oliveira@example.com', 'tiago789', 'Thiago Oliveira', '1988-06-14', '25836914703', '11955667788'),
    ('isabela.pereira@example.com', 'isabela1000', 'Isabela Pereira', '1995-09-02', '36974125804', '11966778899'),
    ('renan.gomes@example.com', 'renan1234', 'Renan Gomes', '1994-10-05', '74185296305', '11977889900'),
    ('camila.ferreira@example.com', 'camila999', 'Camila Ferreira', '1997-12-17', '85296374106', '11988990011'),
    ('lucas.rodrigues@example.com', 'lucas5678', 'Lucas Rodrigues', '2000-05-22', '96385274107', '11999001122'),
    ('patricia.silva@example.com', 'patricia4321', 'Patrícia Silva', '1992-08-13', '15975346808', '11910111213'),
    ('andreia.martins@example.com', 'andreia2020', 'Andreia Martins', '1985-03-04', '75315968409', '11921222324');
    
    GO
    
    /*Criação da Tabela Campeonato*/
    CREATE TABLE Campeonato (
        IDCampeonato INT IDENTITY (1,1) PRIMARY KEY,
        NomeCampeonato VARCHAR(100),
        AnoCampeonato DATE
    );
    
    GO
    
    INSERT INTO Campeonato (NomeCampeonato, AnoCampeonato)
    VALUES ('BRASILEIRASSO', '2025-02-10');
    
    GO
    
    /*Criação da Tabela de Classificação do Campeonato*/
    CREATE TABLE Classificacao (
        IDClassificacao INT IDENTITY (1,1) PRIMARY KEY,
        IDCampeonato INT,
        IDTime INT,
        Posicao INT,
        Vitorias INT,
        SaldoGols INT,
    Pontuacao INT,
        FOREIGN KEY (IDCampeonato) REFERENCES Campeonato(IDCampeonato),
        FOREIGN KEY (IDTime) REFERENCES CadastroTime(IDTime)
    );
    
    GO
    
    INSERT INTO Classificacao (IDCampeonato, IDTime, Posicao, Vitorias, SaldoGols, Pontuacao)
    VALUES
    (1, 1, 1, 20, 35, 60),
    (1, 2, 2, 18, 28, 54),
    (1, 3, 3, 15, 22, 48),
    (1, 4, 4, 13, 18, 43),
    (1, 5, 5, 10, 10, 35),
    (1, 6, 1, 22, 40, 66),
    (1, 7, 2, 19, 30, 57),
    (1, 8, 3, 17, 25, 52),
    (1, 9, 4, 14, 20, 44),
    (1, 10, 5, 12, 15, 39);
    
    GO
    
    /*Criação de Tabela das Próximas Partidas do Campeonato*/
    CREATE TABLE ProximasPartidas (
        IDPartida INT IDENTITY(1,1) PRIMARY KEY,
        TimeMandante INT NOT NULL,
        TimeVisitante INT NOT NULL,
        Placar VARCHAR(10),
    Dia date,
        Horario TIME,
    IDEstadio INT not null,
    CONSTRAINT FK_ProximasPartidas_CadastroEstadio FOREIGN KEY (IDEstadio) REFERENCES CadastroEstadio(IDEstadio),
    FOREIGN KEY (TimeMandante) REFERENCES CadastroTime(IDTime),
    FOREIGN KEY (TimeVisitante) REFERENCES CadastroTime(IDTime)
    );
    
    GO
    
    INSERT INTO ProximasPartidas (TimeMandante, TimeVisitante, Placar, Dia, Horario, IDEstadio)
    VALUES
    (1, 2, NULL, '2024-12-15', '16:00:00', 1),
    (3, 4, NULL, '2024-12-16', '18:30:00', 2),  
    (5, 6, NULL, '2024-12-17', '20:00:00', 3),  
    (7, 8, NULL, '2024-12-18', '19:00:00', 4),  
    (9, 10, NULL, '2024-12-19', '21:00:00', 5),
    (2, 3, NULL, '2024-12-20', '15:00:00', 6),
    (4, 5, NULL, '2024-12-21', '17:30:00', 7),
    (6, 7, NULL, '2024-12-22', '19:30:00', 8),  
    (8, 9, NULL, '2024-12-23', '16:00:00', 9),
    (10, 1, NULL, '2024-12-24', '18:00:00', 10);
    
    
---
## 4. Banco de Dados Rede Social
    ```sql
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
---
## 5. Banco de Dados Mecânica
    ```sql
    
---

## Licença

Este projeto está licenciado sob a Licença MIT - consulte o arquivo [LICENSE](LICENSE) para mais detalhes.


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
